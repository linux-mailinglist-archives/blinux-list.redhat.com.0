Return-Path: <blinux-list+bncBDYPVTOXSQEBBAUT5GZQMGQELQ43PAI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 321BC915DB6
	for <lists+blinux-list@lfdr.de>; Tue, 25 Jun 2024 06:37:24 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-444f1bac01esf7563241cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 24 Jun 2024 21:37:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719290243; cv=pass;
        d=google.com; s=arc-20160816;
        b=p9AKG6KGTTyh6dgpysrEvgNdEtBxvW82O/kmzEncCJ/ZvYpKFeJ7gKlbMBMNjyIe9x
         BDM4k7k9QqTG59A3AqGUy8jxaRH5xSgZh33F939ay4mbAFA5mRN55qdQhaMtKU2VOAAP
         XoDzMYyuX6nKJ5/dgvHp1a9yilLyaV/K3ynQep9VjlbSXc3GkRFfe9YDp2mAh2J94IAh
         uJyYYm0r95mbpuFJs1MnaYYlybzbfNCU5HDBHifurQZPhjUpgRIV3rsjct1r4Mn8V+Xp
         z6Q4KZYTxlawhJhPDYIQJ3n+emdLYgMtm1DT9WdUvw12SBtnDY8KMB2qrQEW39X3WJ7K
         5C9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=JToaRiR+tKdSVKAk0yJ02TmDgH4vJTlj3/AskMmCrj4=;
        fh=g3sBToNtf9Tu0FgaBssKU/XJqZOCzIFffADLyzW0unk=;
        b=n8yx5C+GaMNG6JWSp/ruiCikcB2mV36gdGXpV0VTkelXagRnfc9Am+2zoyPEw3aBo/
         dpgvtNSuOaHOoCPbP9y+ImW+RRf/gX0PgX4k4Tt7WXhXYz6bloHb+ToGQwXdv8NvB2Vr
         zxB83WQU3Lf0vXT7hxeocUHCOGflulDOeCZ7d5ybce7u7LvVoZGQnOGOdMPDeR7RXs8a
         Y9z2kFuqANgZmrPltteP++o2e0QzP7vLjKTEy5VBiJRjKqWYMMxOmt1XzHIJPfvyPDlh
         7UNzMf7UKdDhCGYqU70ovuRsv/fJygOAAHpWlEHHIJP7WG94jvFsLzpgae5x+J2Zx6pM
         FiDA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719290243; x=1719895043;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JToaRiR+tKdSVKAk0yJ02TmDgH4vJTlj3/AskMmCrj4=;
        b=Z767KQ2YC40P2x7Lz9yxhXRtN0NBhNMFphzqMljBz8YzNq9R475D/EsnXhL0w9ZfaY
         o0MvHhbdcoSc1nmlmGhTDBgIdcTODUfSCMhLg8V6BAw/AdC3arxCdiL1Q7yie3mJUJAb
         x7kxiCv4Kua4UcOja4B1tQdqXYzAB3s0UNnxFGaDn+Vg153n39tA9GUz1Xx7mAaPkGtQ
         myjNdfCPix3Hv3zVeBpGfCJMB2JL9xMGPMh3f/zChe20svTXo3tzLHKxvJ9b3PfzjWcN
         C2qGJrpHNV0sobNfTeYKjxnd3SJpf+cQlGeidrjtSEJrZrA+kg7+xIoBzN+KTlb6DajN
         fb9Q==
X-Forwarded-Encrypted: i=2; AJvYcCWA/trg8fV5ji6sBXCZztnuHYSbizuALWHgiGpCDnMjvXrMH0Zj10jSiqtecRHi3BTLpE0D+S2qWM7qMefI32NYy06BdgHQ4nwe
X-Gm-Message-State: AOJu0YwH9YsFdklrp8Vcllxfoz4sMgIU+SyXrsxNwSJ4sJ1U2yTgJXh4
	gDFR1Dmh4EoGazu5ex+uJocTlj1LLq8mxnFXPdGHyUYuj3pf9dLMh9ZQ+efAIiU=
X-Google-Smtp-Source: AGHT+IE9nnuwfQ/QbFKxxJ2kWag1dAQL31DAinraBufbJeOlgr0b7TZMql5AS164JZ4PZPfSfks3bg==
X-Received: by 2002:a05:622a:1447:b0:43a:ea41:c9cd with SMTP id d75a77b69052e-444d6590c5dmr78411181cf.59.1719290242713;
        Mon, 24 Jun 2024 21:37:22 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5f91:0:b0:444:b12b:b736 with SMTP id d75a77b69052e-444b4be639cls74438691cf.1.-pod-prod-02-us;
 Mon, 24 Jun 2024 21:37:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXgDs9JbauieLKa42971fAydv/7EF3lifZuM+OIuVZXgB9+mEyIjzSORgIP00v7HcG62D0T4MXmZwvs9w7+XcCn/57kP+/W4O9KDkZw
X-Received: by 2002:a05:620a:2451:b0:795:cce9:ca9d with SMTP id af79cd13be357-79be47a5369mr742712885a.61.1719290241618;
        Mon, 24 Jun 2024 21:37:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719290241; cv=none;
        d=google.com; s=arc-20160816;
        b=0Bx73Je2hBM+1dTSPQEPYojLNFCfQ8hoaWQmwI0RJmsPAbQR+OFu5rkiEbAvUXq4Zj
         YRr1c73fNNFKg7ak15xSfIpKtn0FjOowI4Eww281rDMiJ5bHta1hc0LlDjdZkbWN9LmA
         MUNibW8w3Qjyz5cBJB2k5+1ihDEmSRw7ImJzUnRXg9h0SaGzJdTLBsO5veRB1NQAq57k
         sUMFslY3uHGrv7Ga6W0LnmxRNT9NCD7Hu4o64tJgyOs3mCFnaaalw4APIFEm0Q5Zy/CF
         1HRrZU8xanLNfdEiatJFq+93nbaH1BT2AB/xBwpEFt14ZRp3cHUG69WIfLmgAkD/DlDC
         v3Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=LxUgSUNYwaC6x5uaIHhJN+oltw2qnLfXGODQbVOsPqI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=tgjSWGgoaRPX05afUvnpJzD/uf8+MH5saWMsDs8acd1qYPuo2LR05M7NaYzpaRoB6i
         g5E2FFxG5yto3zJSfuOkFG6tdhxb+cq9n9Ei8f/6l879Bk4iMtRfh+iR0HS6DuM3lEd4
         qx868bHrda1+yiPakeGDie5zImxeFF4WNnHWYEtvIJmZ2FcjGR97hUOI651nPsuTwq/Q
         EbFqj5O3zYBYjj70UiukK4cTxiC/r4fGbwGfLUkiU58E99ws/f0bj0s6LN1gPskxH32c
         n7Zw4jJzQJtcl5woqjWZfMe9L5uuRStjO0R8Ae49xqRX08416oszOP/9kH4qHtFv7Bjd
         wO2A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-79bce92be4esi978333985a.396.2024.06.24.21.37.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 21:37:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-318-hQhFsT1GMha7cdeiN4CBSw-1; Tue,
 25 Jun 2024 00:37:19 -0400
X-MC-Unique: hQhFsT1GMha7cdeiN4CBSw-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D216319560B8
	for <blinux-list@gapps.redhat.com>; Tue, 25 Jun 2024 04:37:18 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C2DE11954AC0; Tue, 25 Jun 2024 04:37:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C08CF1955E91
	for <blinux-list@redhat.com>; Tue, 25 Jun 2024 04:37:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 065F51956089
	for <blinux-list@redhat.com>; Tue, 25 Jun 2024 04:37:18 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-646-3oqEgMfFOV6GRLbrGq7S-g-1; Tue,
 25 Jun 2024 00:37:15 -0400
X-MC-Unique: 3oqEgMfFOV6GRLbrGq7S-g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4W7X9k5QbwzFLd
	for <blinux-list@redhat.com>; Tue, 25 Jun 2024 00:37:14 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4W7X9k4jkLzcbc; Tue, 25 Jun 2024 00:37:14 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4W7X9k4W1JzcbC
	for <blinux-list@redhat.com>; Tue, 25 Jun 2024 00:37:14 -0400 (EDT)
Date: Tue, 25 Jun 2024 00:37:14 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: fedora 40 workstation
Message-ID: <727720cd-b2af-e342-9c6f-58a952c47af9@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
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

The first boot program needs some help.
Running it with orca bounces me between a frame orca will not read and a
button.
Pressing the button starts the program and shows a list of some networks
but it's not possible to focus on them and actually select any of them so
far.  Has anyone managed to get through that firstboot program using orca?
If so, I'd like to know how you managed navigation and selecting stuff in
that program.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

