Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0E64C56E9
	for <lists+blinux-list@lfdr.de>; Sat, 26 Feb 2022 17:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645894705;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/aOpJOgDzu+2y5/URIhgcf8Ay9udKdHiQ/7KoIgIqP8=;
	b=FIRMvtU+4jjGEo5ZPRyqWQua7YSojeDmW0fW9dafNsg8ZakLitman82+seKLtrEuGNNwD7
	Xqp5ZYRh72TZ+qctdA44dL1RVmJpDRMx1IfaB5PW/591Tno5+P5H3JFZxSsRK58jlw3TMZ
	rryyiTtNPGePGdjr4D7u9MJhmTvAOYI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-493-o8TTq-qbMeSHVNb-r4talg-1; Sat, 26 Feb 2022 11:58:23 -0500
X-MC-Unique: o8TTq-qbMeSHVNb-r4talg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D16E6180A08B;
	Sat, 26 Feb 2022 16:58:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E79CA4E2B4;
	Sat, 26 Feb 2022 16:58:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 304DF1809C98;
	Sat, 26 Feb 2022 16:57:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21QGvetn026537 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 26 Feb 2022 11:57:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F22B7200FA73; Sat, 26 Feb 2022 16:57:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ED0962180158
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 16:57:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9DD82811E76
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 16:57:34 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-193-SfBhwRQIPn20uCPcW6AC_Q-1; Sat, 26 Feb 2022 11:57:32 -0500
X-MC-Unique: SfBhwRQIPn20uCPcW6AC_Q-1
Received: by mail-qt1-f180.google.com with SMTP id w1so5378276qtj.2
	for <Blinux-list@redhat.com>; Sat, 26 Feb 2022 08:57:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=Dn1ym+U8I4GCq3MOOBOCTNXhBpvvHIrB+ltCtVf3uy0=;
	b=c/duVL41sl4ICOtB6Rk0XpbQjigbB0vjajjHJ8JHloQyydnnkRW4DqHTn6m06Ua5Z0
	/yAMPLsdgM7QYhMPG3Q0BaJpmwM5aj/DtORYAvyCWhSdNNtt1/Sx5o0tnIrKWMjvM1bp
	tP0XAcSB2aLcimeB9uEY7GxMjsCF493MVg/z+OYHtwFiR/tYc5ltzVTD8dzlNSlEJpqD
	UFHliv+se7zjlPG/70z2vNYDHoam3fWhI3KQaXpyPmc/bJtJlNbvlkZFM+/KQRvx0OSC
	ZhHRxXybMpV5L8hW+AhQslIgLNntuA+PH4HJEpAicWDyt6GV7RUde+os86fkKb2tDv2l
	zIhg==
X-Gm-Message-State: AOAM533RSkEFR80FPQItgQXTyo24085XOHmo/MV821lEiSoVKSKXdkVM
	+USPXWTUI2yHmGoWKuNBE/r19sfZYqw=
X-Google-Smtp-Source: ABdhPJyFNv52nd/lkjmmg+oZgzVUsA0JqLSRuQzuakeZmQoUgRPGkgVtjt86As93zukSNRHCvOZTrQ==
X-Received: by 2002:ac8:7d02:0:b0:2df:ed77:99ad with SMTP id
	g2-20020ac87d02000000b002dfed7799admr5273822qtb.630.1645894651725;
	Sat, 26 Feb 2022 08:57:31 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	q12-20020a05622a04cc00b002de06a6604asm3723905qtx.16.2022.02.26.08.57.31
	for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 26 Feb 2022 08:57:31 -0800 (PST)
Date: Sat, 26 Feb 2022 11:57:30 -0500 (EST)
To: Blinux-list@redhat.com
Subject: Use alexa on linux
Message-ID: <34339ff7-af34-775-fd30-fd75f6878d4@gmail.com>
MIME-Version: 1.0
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


Amazon's Alexa Can Now Run on Your Windows, Mac, or Linux Machine

https://gadgets360.com/internet/news/amazons-alexa-can-now-run-on-your-windows-mac-or-linux-machine-1472377--
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

