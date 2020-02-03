Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 7E842151025
	for <lists+blinux-list@lfdr.de>; Mon,  3 Feb 2020 20:10:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580757043;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ITNdMpfliPqZiT3krGZGen7NjeUP9/UT53hybKtlm6Q=;
	b=P0Dp21J8PDW5tVoYzT5Wq2/mD8ns/sFxzL89imMXvv7y9+OpNDMk0rf5WXGQjQi5FoTyOL
	Nkkyw4JnHTzOCmLhW4+/g/t9caT4BUJwYuMTtb1zJjpAmDu+m8rHm2v20DhZH1ykSmYLS9
	ykJmpcT0EqLeRKJnK3Rwo4ttYZ5Gnlk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-BOBxt0cyMSO3s_peiry_xg-1; Mon, 03 Feb 2020 14:10:35 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 25B97107ACC4;
	Mon,  3 Feb 2020 19:10:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC96460BE0;
	Mon,  3 Feb 2020 19:10:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 80A9018089C8;
	Mon,  3 Feb 2020 19:10:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 013JADvA020311 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 3 Feb 2020 14:10:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6C41F2026D68; Mon,  3 Feb 2020 19:10:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 671ED2037E43
	for <blinux-list@redhat.com>; Mon,  3 Feb 2020 19:10:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8159910197E0
	for <blinux-list@redhat.com>; Mon,  3 Feb 2020 19:10:11 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-168-1I_PwUSEPWCh6G0YQDvrlQ-1; Mon, 03 Feb 2020 14:10:08 -0500
Received: by mail-wr1-f48.google.com with SMTP id z3so19777490wru.3
	for <blinux-list@redhat.com>; Mon, 03 Feb 2020 11:10:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=8nZ9Z0a44EqPEsuYhuEG8E0Yq2h0S+epe6dKRvtZV0E=;
	b=DrXnSRmSDRF9Y7Vasxl43L8sOqhyBNZAqrTBdVOa88Nv2rbrq6Q1AxFIb/dCKOx0UT
	K91rpyakuoJnAznpGUWd/Yq1/D1wht2bcGi00SDSyykIhRyFeftPso0emOeMRua4xaVA
	b4FE0rPCvJEX1p/uS60ueSMBC7qTvbg4uICBA4j49pey4uXO2+QdtguxtmwGmXZ/7BMa
	GajRn1qjEhw8jbXMWO2bCjnXXGCyj/PDv6vQckZYqH8pPETA/5FDcpjrh/kRiAwN9Y27
	Le/+SFg72tUERsZYQMFX4g71Daq/LbrsD/FBpP93+5EhT8hZ/tBFcziwuwJmMpKqyvM2
	buMw==
X-Gm-Message-State: APjAAAVvblITy+Yo0vBvlHajV2R+asRMXz1H2gd3u3A058jaj3kZRSwc
	V4dWEqFRIn31nh1ePtJ0NJDmYJ/CavB8Oxb0ornNNBCe
X-Google-Smtp-Source: APXvYqwYslccvkoASUjH7vLq2QY2BtUGB6zcKI7fk9BP5Q32wtNZXWWJXWy5CIBz6REC701Ot0IeeIgOLdYK1+rl7E4=
X-Received: by 2002:a05:6000:367:: with SMTP id
	f7mr16743287wrf.174.1580757007450; 
	Mon, 03 Feb 2020 11:10:07 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6000:114f:0:0:0:0 with HTTP; Mon, 3 Feb 2020 11:10:06
	-0800 (PST)
In-Reply-To: <165B2FAD-F35D-482B-BE93-40F0BEC7A24A@gmail.com>
References: <165B2FAD-F35D-482B-BE93-40F0BEC7A24A@gmail.com>
Date: Mon, 3 Feb 2020 14:10:06 -0500
Message-ID: <CADj8JxdQTOcUMtXyyNd=FbQYMAmedwyt2GEGdUSzJzLGfGmQYA@mail.gmail.com>
Subject: Re: g podder
To: blinux-list@redhat.com
X-MC-Unique: 1I_PwUSEPWCh6G0YQDvrlQ-1
X-MC-Unique: BOBxt0cyMSO3s_peiry_xg-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 013JADvA020311
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I think its alt then f to jump to the menus.

On 2/3/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> I am having trouble getting to menus in g podder.
> What is the key combination to make an opml file of all my podcast feeds?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

