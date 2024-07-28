Return-Path: <blinux-list+bncBDYPVTOXSQEBBLODTC2QMGQESOPGIWI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 671AA93E4A2
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 12:47:11 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-44feeac4be2sf35868351cf.2
        for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 03:47:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722163630; cv=pass;
        d=google.com; s=arc-20160816;
        b=jtOM5e+5Lc8MrjSVnHe0xpjW9u8BjJH6VfJH1XL+D8Kjqx5HklNxWvs75YuvbeSHvt
         uGIZg4F2z6KloyRpYaRySeJtCk0eZlWT7WAP7ut+AjtdczoH0br9Q7zgXqUeGG78ZMRV
         AtbkSnk5X7jzDPLH02qVBvEo+25dWOfq31OfPe7FjPKYOqIs+4s//LltcpFqmwlO0v3O
         MkOATdl8UZeF7D85b+5aCuXKRivAuJkqrzfrfXN7JVK5d1Z1hZHyOTB0dAbOjPOMS1oF
         FB2bxp+hLQvttavrSL/VSPqZ09ArwDmybN3dvprrrObByNR1ynXwZk/UyVpRWoZqTSKM
         0uGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=WCj01DKsnDbzu8dpR3xYja0GD/4dXwabeslb9UE8lQQ=;
        fh=1QmnxAGpvIW3M1djeqqMXFSlrOughFCzZ5xidSgstrE=;
        b=U//+TJhECH9Rp5zncT2YULguIUNlhG9J5Vq1dIGo6TWgPKgH6wXjnALtqiR6ZukQj7
         aMkORCeQUKaydw+s0VDGKffOFXmctmUV5/1ZvnVvtUWvz25iQ1dITEPFlpoovmA7oLY3
         iK9sVBYRROKMbhrPJz7vopVzRlTkIPwNnGzM+XTEmVcuiSw/5S/F8ViBLUfnsw8bt9Q6
         yM3u9J3akmbQjCs1qZExLe94BrxreQWMqebCDSFDdeoQYxM8t/ykI8t0cqjufbyqr6uC
         sTUMqc5GLRn995IOlz+OjTujOlME8FX7Pu4X64e+36IB42EkdrMUTBp0IIKRneu3o+jN
         q1yQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722163630; x=1722768430;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WCj01DKsnDbzu8dpR3xYja0GD/4dXwabeslb9UE8lQQ=;
        b=U3Zn0QAR+3rgJgnYBHScMHd85lgZO+0qJykRkE9uHcOtGRYQvPg2jf8PR7R6wr9ZY8
         yM9xMOQWVUzUoCxEz6WYaNCFUg/pKlT8ANpdACP7ROUe1+MR8PBRAPDFNWMu1QTmATc0
         DYY/iLcSxUlsSLvBtPj4ucqhVHzl4NqmMW4kmhXY6W8DW8opHQEJ/qbKrUQbtPHx1Y2w
         iVjAYTzvJP8plyXG4Qt6u3WgnMaeM75oatQ4PtAf6QtUe6M+ZtMWocm+oK4JnRIL3gvY
         F3Vr93KEnnK86Bov/m3YBCGFrE0U19Y6UDtw3sMOvFm+65XaczUqHhxwW9A5Lmjk388P
         Z0Lg==
X-Forwarded-Encrypted: i=2; AJvYcCUcX0bWGl5gDj84jm1rhGSPpq0BdLaQaEJME8qDPe6ZjfvVvkly+CczcI25mWoFj7wVoW0TDosm0173b++1290VCUoWGiYipa26
X-Gm-Message-State: AOJu0YzCOab0xsHbJR27cWJ5xITuT3oi2IKzVE7S6IEQRMrfaxWujLLz
	rMHihL+2/sYIxWqDeUBYOTykUcab1s2+AbL0bDfb/iJDp3SrbU/OTBDTnw0UmGg=
X-Google-Smtp-Source: AGHT+IFpfD3ZdYrAkHLFY1fLV/q2xQqclvVaLHtThGxp+gpr4Bz/ZJr87l9fojPvWNXIRvWqGfzMCA==
X-Received: by 2002:a05:622a:314:b0:446:5aaa:785a with SMTP id d75a77b69052e-45004f834b1mr51938501cf.62.1722163630140;
        Sun, 28 Jul 2024 03:47:10 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5a11:0:b0:444:b691:8723 with SMTP id d75a77b69052e-44fe318be5dls60578001cf.1.-pod-prod-09-us;
 Sun, 28 Jul 2024 03:47:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUhHSZf08d6Z+vTz8yvYEqkURVzyHtIPDUIfSrPSpW79suEm07kc2p+Hqf0r1QpbpRK20t5KI5lMe6UbVmhuuLTL5Y9ugPy8NFkV+CI
X-Received: by 2002:ac8:5806:0:b0:44f:f928:ea8c with SMTP id d75a77b69052e-45004dc89c1mr66096701cf.30.1722163629197;
        Sun, 28 Jul 2024 03:47:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722163629; cv=none;
        d=google.com; s=arc-20160816;
        b=CVzHedwS6zG+7XCch02wtJLPxVS8ajSI6K2+PbXeTcgwwYDttNyN1bekAa3/ORIggB
         GF7qlVYPXV5p+8rEU+n55L/obG/J+B+SXTFlkpI03C9opzPeSGwWp4s08TvDEgvahSe4
         NarQ3qJW8bXeluFJtIVWXslHT0aF08huRu8zLekHmjg+ytCtVp0u0njZQuxp7ZqDzLLy
         E0q0vZmU55vxMf2PgeBXnJPExDlhBc4cIA52W4HGwyJy9KPcIHOa0rqO9b49vyiuP/Q+
         j1DWm2N5wFt6eDGnr433Dx4Du+lcChnvgJoMII5Bw7MeeMr84H3F0uiuwY/DZxdKcU+/
         rntw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=S14c18byHEew4Fvl+aiXNpB/PdwRVMeFtXQJBBVGbLo=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=EUXwhzZB8jyakym6RfOwUvH2ehQGBE6WPbFzNiiqjrMlI2+/c7Zk49JpYRSv9cPyEU
         HN45hJ5CAD81itXAXh68cYXDcRmhEm9+cKgGZKDq0zhhvCfc7TCLPwoQD5Omjp6xHURI
         qya6BoWvGd+LqknGP7FGMz+FOZW7yJinde2e04Z0XVRM/yVGc/vaQfGVuYlpT0GC1XfH
         e1JobClhxuzkgLhVijgXhcXdBZ7cJuNHDMB71N9aMZlnoaf2g6PaqQjcNXqHRYNy4igT
         UUzhbovEOyfo2MeEEBHX8+pXwPAzCFrgHJkkkgiPDnxWelfAd5h4KeOW9WMrG8Vx2rmd
         6KRA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-44fe853d3ddsi77201541cf.760.2024.07.28.03.47.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 03:47:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-122-CTgqpBUePHyKqP8sjpBhLA-1; Sun,
 28 Jul 2024 06:47:07 -0400
X-MC-Unique: CTgqpBUePHyKqP8sjpBhLA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E584119560AA
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 10:47:06 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D4FC61956046; Sun, 28 Jul 2024 10:47:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D2A3B19560AE
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 10:47:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 522F219560A3
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 10:47:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-689-6vF4U4VQP1mn2GyJRbRT1g-1; Sun,
 28 Jul 2024 06:47:03 -0400
X-MC-Unique: 6vF4U4VQP1mn2GyJRbRT1g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WWyqC1zwZz4Fft
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 06:47:03 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WWyqC1prFzcbc; Sun, 28 Jul 2024 06:47:03 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WWyqC1lSSzcbV
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 06:47:03 -0400 (EDT)
Date: Sun, 28 Jul 2024 06:47:03 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: slint
Message-ID: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

anyone being prevented from downloading a verifiable copy of slint due to
an unreliable internet connection can download a zip file from my panix
site and once you understand how it works use the scripts to download and
finally get a verified copy of slint iso for you to use.

https://www.panix.com/~jdashiel/getslint.zip


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

