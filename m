Return-Path: <blinux-list+bncBCL5FHHSVEIBBYVIV24QMGQE5IKRUDQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C309BF2B9
	for <lists+blinux-list@lfdr.de>; Wed,  6 Nov 2024 17:08:04 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-462f5ca5b68sf10054201cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 06 Nov 2024 08:08:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1730909284; cv=pass;
        d=google.com; s=arc-20240605;
        b=f9Ry/gwa0dqjq2kzccKxHEjjfizoMf6qVL+eZZZ8tqZEzjh43pxce/iqC6At1Ub8FX
         uaAvR0W+eDa0fQqNYxG2nzWI8cqRdSYSjIx3Y1KZtd4UlX7DrrmBGWF3jGWEuLguoZ+9
         E9Lef3F2R4sNds3EUHovZh7tgVe3aaR3dDSut7dWXcixdhkybjLmxnKI/19h1zGv42gi
         59cmgky/svnwmh7sTS7p6vsG5cpLVRx4zo7JUmYeDTJO3+PCEv2ipI4WfFF/lm0FJMAg
         o3SzQYG6PTHlC1atu4YUUW9I09MVTv2qqc/sTzcn4xv96aYqSjinGgB9HxGyEizLHxuG
         L79g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:subject:user-agent:message-id
         :date:to:from:delivered-to;
        bh=MFps9Za+4oyWCJb7wmjWnsFwBETv7N3ND3z0Ckrx3u0=;
        fh=XEJepPlpGAlsYxNM1fhd6ieJxMv5kKgZ92DrkZZPA7Q=;
        b=OR5JDMerqnmaS/3Rrtzpjl1DulTo3rlcNm5cM3VYsr8ValXiuRLB+cyisqgJNvnkkq
         i6S3LKsJb0HlLVJMayxBFyQWqZuatkdi6JQ1PWOFcWQYl1DSyr5W3tTXUey5xrwND8bT
         /Myg7p80N8K2WTlUwvR4CA/PPK4xFLpceLWVVYjvm/Y/T7IyjA45X5uFHWnRvN+pHvkW
         0rrune1JfErYIjTsvrR87XNYgUJm78nq8nsh1Ubw4JidKdhDM8aCDdur7VL7vjgZdx9O
         ZixHHyMUs4kj6d8XgxqH8YRe0+cezlTMx/Dsr6fxssytCEnxSF7clD/3dbv4lA7uBPEe
         vh4Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.54 as permitted sender) smtp.mailfrom=mjonsson1986@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730909284; x=1731514084;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :subject:user-agent:message-id:date:to:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MFps9Za+4oyWCJb7wmjWnsFwBETv7N3ND3z0Ckrx3u0=;
        b=EV/uGt6NAVTytQOn64E0lZ4PSf2YifdS6b7nVIRELFauUbrcdZ7UTYjWLQbqXBq9Bq
         SBM2tDUeleJ7FmHIj9Ia+dcOfqRHy/4O5rze+idAR4qynsWY3yvliwkAqYGwdEkOZnKd
         OpcVbAeCVZZSUVnelMQllf9Pz8vLTccYZwsb7m2D/IS+fdZs4daoyg6ndq+9J+RQpj4i
         xvVWfgA6Q3msYd6VUy8Nm12LcE3kiwdLYfTqMG/Brf1SNMR6uvBa/K0EbZOtE0iEZnPg
         w8rq+oLCYVU3tUu4K1xX+wd0XwkeBChMRyh0Y2PFpVxKRPtjprE9W7PbQ14236Oo8aP0
         mfJQ==
X-Forwarded-Encrypted: i=2; AJvYcCUV9omxVXYn6gYukFpwXyw8uRZn1vGQHkH3l7Ev6g/mgprA0izRU3F19sLHLdo71TFFrafhpQ==@lfdr.de
X-Gm-Message-State: AOJu0Yz4l7ul63B9HM69sakG5skCN6/B+tBZDYGlexCvGVKliBoKtq2k
	pQVZy28Kvs9e3HBH2yvee9ApYbtwWJ3P/qNkQPhNWweakFriO1sy+ManjzaKs+s=
X-Google-Smtp-Source: AGHT+IFkTG1sMIjfyuzw0mu9IrOCJpx8RlgdRuWvUKUH4P/Jm5N8AZBOo2Uyv8HGnwGa+ueRXGJSRA==
X-Received: by 2002:ac8:7f91:0:b0:461:6478:eea2 with SMTP id d75a77b69052e-462f11e9f33mr41557441cf.28.1730909283247;
        Wed, 06 Nov 2024 08:08:03 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5f8c:0:b0:458:3f09:c712 with SMTP id d75a77b69052e-462aa89f780ls125344351cf.0.-pod-prod-00-us;
 Wed, 06 Nov 2024 08:08:02 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXpIWr6rI+qTFhRfkb4F3dLQUSkxJs/W25bihEskvhuQFjIWqQnDriaWzX8YUSQzOU9VoinvZfs2wchkw==@gapps.redhat.com
X-Received: by 2002:a05:620a:4556:b0:7ac:e8bf:894a with SMTP id af79cd13be357-7b3217fdb1bmr416054585a.20.1730909282029;
        Wed, 06 Nov 2024 08:08:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1730909282; cv=none;
        d=google.com; s=arc-20240605;
        b=QNI7RmT3ae7P8xsaifbdZxZPQjUjGe+OqQ5thd9He3OqatL8DGJOuNUtbT+bK7oMAJ
         SVgYPvnFOqN2khO5ExedWu2hXLB2TAVpm2x7IgJCkaHEfYf4BmKBbOZns+AZJ9AiMlRt
         LdfZUTnHMq26hssAGtVk3D+SIjsmWFu6HQ0dybvFCH/dCFFd8kvnvC/+PcxIW3iKyTTb
         tVdp3iuCAI2+Izg6T2h5GgSYGTNxuuZqXmuWsp0OJcYpZF7r89MxtUvEcAghFfs3/E6n
         pyT1OcHus5ek10ggGmWsLmcZVyppjPo2WxNzy5v4rxAB7zCYo0c8/xH6nRniTvfoZ/Fn
         tD+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:subject:user-agent:message-id:date:to:from
         :delivered-to;
        bh=qf64Myoz3wdWvpaFzRlwRirOO1nFxJ7zPxepoAyM3+8=;
        fh=4iJgjbk5c8Yo+TvvmqZqWc+AmoMLBhpAT3xl9GN/VAU=;
        b=clDCpSAVxTG1zPRNxIdspbjpAxiqgVIc0SsTbxB0ucSTICcWQ8Iim/UVXWUGe3xcK8
         yoJOXmA1AmoM5bnC9MzTaEZVFGOCZcaiL5NNlzuiRXHZisprrN5S5pJI/deR+nvEuBNQ
         XlkHDAOmu6A9uf46g6r/zFc12P2/Atps4ko+hWJFIZWLSxVlHgBJZW1rKw/sB5Eq8Ud9
         qmiO2R4/CB3dy1n8/nqpudFr3sULSQUkyhq5MK/Zcz1G13mrl53nsUlQzM9npR52zIky
         wSSs5wtYS0yOtmXhyV6vsqGwSSAqxXSJAgoIFTmtzj/2UYC1qo04/7Te/S9LA+gdkXe7
         uFvQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.54 as permitted sender) smtp.mailfrom=mjonsson1986@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id a1e0cc1a2514c-855dae7dd53si3214967241.155.2024.11.06.08.08.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 08:08:02 -0800 (PST)
Received-SPF: pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.54 as permitted sender) client-ip=209.85.167.54;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-494-1-1m7ZWiPxqzVxAt5dik4A-1; Wed,
 06 Nov 2024 11:08:00 -0500
X-MC-Unique: 1-1m7ZWiPxqzVxAt5dik4A-1
X-Mimecast-MFC-AGG-ID: 1-1m7ZWiPxqzVxAt5dik4A
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CE2581955F43
	for <blinux-list@gapps.redhat.com>; Wed,  6 Nov 2024 16:07:59 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C82C61955F21; Wed,  6 Nov 2024 16:07:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C5AC71955F41
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 16:07:59 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 620351955D4B
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 16:07:59 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-359-63MmCeADMT63zpPSjTk9sw-1; Wed, 06 Nov 2024 11:07:56 -0500
X-MC-Unique: 63MmCeADMT63zpPSjTk9sw-1
X-Mimecast-MFC-AGG-ID: 63MmCeADMT63zpPSjTk9sw
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539d9bfc5d1so902094e87.0
        for <blinux-list@redhat.com>; Wed, 06 Nov 2024 08:07:56 -0800 (PST)
X-Received: by 2002:a05:6512:2249:b0:539:eaa9:738c with SMTP id 2adb3069b0e04-53b34911d38mr5643595e87.7.1730909274893;
        Wed, 06 Nov 2024 08:07:54 -0800 (PST)
Received: from [100.115.92.22] (m83-182-145-175.cust.tele2.se. [83.182.145.175])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bcce411sm2477848e87.121.2024.11.06.08.07.51
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2024 08:07:53 -0800 (PST)
From: mattias jonsson <mjonsson1986@gmail.com>
To: <blinux-list@redhat.com>
Date: Wed, 06 Nov 2024 17:07:51 +0100
Message-ID: <193023b73d8.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
User-Agent: AquaMail/1.53.0 (build: 105300523)
Subject: crostini and brltty
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 57JRczTGs42UA7r_ld_aWRBHsnmUYTqXmisq30SctrU_1730909275
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: u1b5O-z4H41wX3Uq-v41wrtsL1ChqHW8SZsWUFkl3RU_1730909279
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="193023b77563dcb275e13ec724"
X-Original-Sender: mjonsson1986@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mjonsson1986@gmail.com designates 209.85.167.54 as permitted
 sender) smtp.mailfrom=mjonsson1986@gmail.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

This is a multi-part message in MIME format.
--193023b77563dcb275e13ec724
Content-Type: text/plain; format=flowed; charset="UTF-8"

have anyone get brltty to work on crostini?
i allways get the no screen error

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--193023b77563dcb275e13ec724
Content-Type: text/html; charset="UTF-8"

<html>
<head>
<meta http-equiv="Content-Type" content="text/html"/>
</head>
<body>
<div style="color: black;">
<p style="margin: 0 0 1em 0; color: black;">have anyone get brltty to work on crostini?<br>
i allways get the no screen error</p>
</div>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--193023b77563dcb275e13ec724--

