Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2906C4B1779
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 22:15:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644527750;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ST7wdWgNnuXMUDO4XuGlbL2vnxEpzCdrZc5+nGeUOoc=;
	b=OjzuuIkSE+MemaLUsLR39OQp8wQWYED7FouQkA0qY3sVmdnSPe4AwPkgmIftlFFZWCz7yW
	/9rkorWd/iDyPRzFpIMXTo+VSZBY5G6c68/Hc3GaeZob/zC+biGC6KlU7HlDOoudA5ZuJ+
	j+TpL3k7IcX/kSDJQB23n1In0X2FlbE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-17-zjX0_PPmMIGcnwnGU-O4Ng-1; Thu, 10 Feb 2022 16:15:48 -0500
X-MC-Unique: zjX0_PPmMIGcnwnGU-O4Ng-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 14635801B04;
	Thu, 10 Feb 2022 21:15:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB20F4E2A5;
	Thu, 10 Feb 2022 21:15:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3956E1806D03;
	Thu, 10 Feb 2022 21:15:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21ALFTMN009882 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 10 Feb 2022 16:15:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E4AC42166BB3; Thu, 10 Feb 2022 21:15:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DFA002166BB1
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 21:15:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D19C085A5BC
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 21:15:25 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-546-4WljZxLqNg6H3vc5yO6-gw-1; Thu, 10 Feb 2022 16:15:24 -0500
X-MC-Unique: 4WljZxLqNg6H3vc5yO6-gw-1
Received: by mail-qt1-f175.google.com with SMTP id o3so6817621qtm.12
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 13:15:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=vU6Vj9mkN2Nz758OKXYa5Xe4IBKSM12i33MMmeq1TxQ=;
	b=Zxu8Dq9nKJwd+bWyofv15+yVaSPaJCfr4fwPlsl8lUjH2tRyWxiOl5E6PQB1liUxqW
	P8/C5ZK92GeYqapgGIwp9O2M2EJ1c/IBq9p9o8gg2NHbwnlNP+0FSsHbq2JQHsFXekdx
	cVYxJWyfTsTDYZ2ZEflX/6k1I72FO05qwhFPX2hiZPtyqOeOqkUsTczMZKGmhnLEzIa8
	/NwTlm+OK/madEgIcrBgTIOWltBufrraQ4zHiw+/E9OQO57itK/WSlvaRM60qnx+hGHF
	UthIsWdUC+H80bWe9Tva1Vrbh3ydfaj2rBpduTtFE69Yk+6H4JRiirmXDzfbL73gzRV8
	fi/w==
X-Gm-Message-State: AOAM531m6TTUlabbunS7gl2vRMcsskLmTIydliKKruY6MRwKCGmcMY3+
	qDnOOBh+s8rqXm28McqVotPJI2mY72MPwb+zoWzH9ky2
X-Google-Smtp-Source: ABdhPJwsoDtO076bs0wiEfCIkZIRPl2QRYG63SvdldI/zLb7t22tdlbfOD6Bz+zKTK6lCsM5bQE2kZ4gw93l1qD60Vs=
X-Received: by 2002:ac8:7dd5:: with SMTP id c21mr6255136qte.367.1644527723655; 
	Thu, 10 Feb 2022 13:15:23 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:d06:0:0:0:0 with HTTP; Thu, 10 Feb 2022 13:15:23
	-0800 (PST)
In-Reply-To: <525932f0-fb78-031a-274e-e4536c102429@gmail.com>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
	<Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
	<313791f3-8549-681d-52d3-a3eea4621ba2@gmail.com>
	<CAO2sX30hbz93wap3DHx=7pAb9M5r7S8hXG7zvWGzjeJ9nmHpGw@mail.gmail.com>
	<525932f0-fb78-031a-274e-e4536c102429@gmail.com>
Date: Thu, 10 Feb 2022 21:15:23 +0000
Message-ID: <CAO2sX329NttxEopgFfQx7r_=73gNcknJEAmSQmUqJdGBHFu8sA@mail.gmail.com>
Subject: Re: Coqui TTS has blew my mind!
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So there's no way to force an HTML5 browser to show the non src stuff
between the <audio> and </audio> tags? Shame.

Still not sure what the advantage of putting the linkes there instead
of after the </audio> is though.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

