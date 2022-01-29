Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2711C4A2BBA
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jan 2022 06:11:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643433099;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yqO54AemTxpWSSYf0XbxvQpz7XKTQMY7SYAIa+CE2eQ=;
	b=b+8H4UFXy0TcDS/GdzfThXNpSWrwv9kz3+IllIP/LkC/M2w/koPh0ZuEYGryFh1hsQL1xj
	zG8qJIvWDNhdTz0T0tf9ChTzsscM2Ik3zmfEmgzCRPdzHpYAvvNdT2wpXSNeq9P//vamdE
	CJHu6CfSDM5kN5Wz/Eba3+03NL7zlu8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-552-5kbeSA8fPoyU5SzWMUty-g-1; Sat, 29 Jan 2022 00:11:35 -0500
X-MC-Unique: 5kbeSA8fPoyU5SzWMUty-g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9DE5E1006AA0;
	Sat, 29 Jan 2022 05:11:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A31136C191;
	Sat, 29 Jan 2022 05:11:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 91A174BB7B;
	Sat, 29 Jan 2022 05:11:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20T5BBPj015711 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 00:11:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 097CD2166B44; Sat, 29 Jan 2022 05:11:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 04A0E2166B2F
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 05:11:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 781B9380261B
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 05:11:05 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-295-OoIVEo19PFWtXCkMBEkK1Q-1; Sat, 29 Jan 2022 00:11:02 -0500
X-MC-Unique: OoIVEo19PFWtXCkMBEkK1Q-1
Received: by mail-qk1-f171.google.com with SMTP id b35so6955520qkp.6
	for <Blinux-list@redhat.com>; Fri, 28 Jan 2022 21:11:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
	:subject:message-id:to;
	bh=FzxxWzB4uI+IRwNpnsQ+CZjGgwvrChVVkd8v0TIOi/c=;
	b=TUH52DDf7NaUBQUGxEKPYCqdFBG82AH7UzvPGlSiuov5c1ra1z8YIE7z2xUr71Bjsd
	mmxSclGBDUWkM+kgwQC8EW9ZcgpagtduBZ6/gWS1UGpSVeCgqv7SYHzxGfGpoqALHB6P
	ZHrUa7S4N2kChqsiDr1f2AI1OlojDqMQTH6qJXnKm0YPe69K4AVO0pHjjDPsgXZ9ohgk
	9WtlN8gUUyqA6ja0jVlOBwp6vqk6Tb1WVNpSOa8tXG+dNQ2yVcmRldqlj8LLiFWHKEAN
	e0rjnhMK8d4ftMkJSIeR5+k7510cpwjb9ZAStZ+zyV7umAm3m7fFDOxz2x5nslOmaTQT
	OePg==
X-Gm-Message-State: AOAM530gVbUtTBHykawzRyoiT7oxtrvm1A3BydawWseoyPHk91xhF67G
	KX5WQjGEfN3rMWOzi6fCIvEQY50aDKM=
X-Google-Smtp-Source: ABdhPJx5FaVIC7cJmnImYVJBYTSCefR43jQCl/P1YlN0CxEUg92QIgx87zCsqlTr0VS0kl97td+aAA==
X-Received: by 2002:a05:620a:13d7:: with SMTP id
	g23mr7912826qkl.484.1643433062084; 
	Fri, 28 Jan 2022 21:11:02 -0800 (PST)
Received: from smtpclient.apple ([2603:9002:304:d847:c577:78f4:a9e7:a0ce])
	by smtp.gmail.com with ESMTPSA id s8sm4259905qta.10.2022.01.28.21.11.01
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 28 Jan 2022 21:11:01 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Fri, 28 Jan 2022 23:11:01 -0600
Subject: accessible ssh for ipad?
Message-Id: <40EEBBB3-C9E6-419E-AEDE-63429EC0D85B@gmail.com>
To: Blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Does anybody have one? thanks.
--Briao Tew

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

