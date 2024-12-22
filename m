Return-Path: <blinux-list+bncBDYPVTOXSQEBBZEDUG5QMGQEVCHP27Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 080F09FA6E6
	for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 17:44:23 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467bbc77b05sf71930751cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 08:44:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734885862; cv=pass;
        d=google.com; s=arc-20240605;
        b=StAefgMkkROHox/MquESXMT+kRpN90Ty0VG2ku60s44fKsBkyVOuYefxVI3+n/SJDH
         kQwtGgI3BkCksUcX9E9fOoVQBsYAszhXnNFVhc8G43miJkxjuNjtPujrikbDSmIiKeZr
         cwSPJ9g/oHaqeTeGFvZlUeSXUT7OMM9o0cTt/7mPffAZzwczQV+mjylchZeS6Rj7m2mF
         rTSPSGRsQdb9q6ezi0GYu3L32m/qsc1OOJtqx9plFK8gzi4BW2uc5Qey4pYNa68wVDkm
         /R2uhNDu/XtDh+UwIvkDtb/lsyfZYDChSQxkIIduls6aVjP+Q7/T4tnGmgKFoFVuSDeJ
         1LtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to;
        bh=SYZGbKyLqRKYjOp382QAM9IBkmPxmkI/MaiKDdFncDc=;
        fh=jB41C174XCLSl8AUdcu5qbAD8WsxLvPBDNCfgc54XI4=;
        b=EwdATLjwSApsnvOuF6OBe4LJxSuVvxtZJjnptqcDsUN/w/HzfD+ygbtNzpsdPSAqsV
         qM6gDzpUUONsfbtf3LtbPfRag+F45dfK3xGjXera+DppFjjiyn/5qiGdb0jK33kpbWNR
         Q+67HhQkxST1uiEj/LsDPZiBntu+eoeuAUZQr3aQkPUaH3A/LmpS7gLepRv5b6HLBmiB
         LNZ1cILBjqrUVbsx1OrEVks0klXTIr2Hbl0JAL06bCHipi+ooR5bXVAiNod5CO+p9OUc
         5wL7VET/5vBLuKx1Hv/FMnsteH5ZMvG+44PE336m3mrdjN47F+RpUA/vlmd8BgSfDcIi
         EY0Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734885861; x=1735490661;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SYZGbKyLqRKYjOp382QAM9IBkmPxmkI/MaiKDdFncDc=;
        b=PAa6UhKQ3/MCIoLX8+NL1SqNtIBX1XP3th8YkP3yBJUOBTx+KIyM7td8dy82k2i9JO
         c6yqbvzEdaQ+BNV3RZBXFCNPV2tFj4kYXNNbGrf8dSKXbgqgG//KnTPijdqiBE10T2kD
         J/P4sST1gb+CrMSZTgzCPgr8cGPCVrM+wN85JRuF/TB6KXTn1ktI2SH5BdUDvQ9c10kK
         I+bWUJ3wYqSR9qYcXyUGtIqZdIM3Jahgg5HqIpgQFYf4K7LFjypwPFtAuU6pcNyfkFL+
         fbdIHwxyUEdHMw3WxvQudTo7AnW7L7NbxRkNZ+RsExNN8724WWyeFudWaHilGU0Fq3sD
         UUSw==
X-Forwarded-Encrypted: i=2; AJvYcCWFlnTWbroxJKuf8oh/vq4hxPUZoZitFms2BqyaOjKxRAzj3yKpZIm7u6dhvXHqDWqJmYkX9g==@lfdr.de
X-Gm-Message-State: AOJu0YwO+8YNFWTZvwLrkvt6dFRXluZNzDNV/e4+CNJ5GjsHSxgbh4f7
	h362MY3P5Kz8k4++ZvTqUe6qrFfl5pv7UEVJlA8yL5GJ6XJo2VwfCsm0Eu0kYXs=
X-Google-Smtp-Source: AGHT+IF7qvOq8kGJfXA3JhjLFmDEHYUKc0TF5MfvLOhOmiHho9nfIG4SUIJdJSS/XxI1OZvm5M7N1Q==
X-Received: by 2002:ac8:7dd6:0:b0:467:4f9a:6511 with SMTP id d75a77b69052e-46a4a9006f7mr154105411cf.30.1734885861465;
        Sun, 22 Dec 2024 08:44:21 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7d14:0:b0:466:b34c:880d with SMTP id d75a77b69052e-46a3b07580bls50582851cf.0.-pod-prod-03-us;
 Sun, 22 Dec 2024 08:44:20 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUrJoVZRbvsoPEyDfMJhghAEbMe131jgyV0Ijj9rVCA/rpzO1D7bDU8mTZUr5NF7wIgPlMNYTX8Afey6A==@gapps.redhat.com
X-Received: by 2002:a05:622a:8d:b0:467:613d:9a1 with SMTP id d75a77b69052e-46a4a9b7524mr144911921cf.48.1734885860443;
        Sun, 22 Dec 2024 08:44:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734885860; cv=none;
        d=google.com; s=arc-20240605;
        b=AdDzUaSvJobhi9rDXT3VKMQVEvTTtLeNU6z0YIve7841TJ+hz/wkp/SWvRffb22Z+0
         SUjzNmMhzJnf383hAUteYH3FykeSBVFVi0K5yAhs4ml8z039/tB9CW8YHR9G6gXa9Ejp
         l/UikN0yqN+Q/hJK9pjp/wanhNMhLBsWZmFaMhJ/qAtSWdnvdGMJUmtFe6lkML/u/iaJ
         t9GVVxORQdb4ee7yyvFORueYgbt01nr3NG5xQBkjsS0TmXHc9srXfZKc/foNGwTWuCKC
         mXDoRLGGnn+dHAGd+/JI81zPTEt6PiuHb5vGVg67DVOm2ef0iAGinJFtXO6eY6FRRV7S
         clIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to;
        bh=5b1v3Ba9cE8Rb3HIsWRjx84cGezb1aJvHcCXIMdkKOE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=lpd7JDUZIl3eS9hDp+9B37KTpTbkFIo6QCFBMGWo3NsemfkPFp8elif/XOGo6kqhKK
         6ogd0cMGX6doY+9i7KNgG7yHyvaErsffX515J/uX+yEgVYKJU38VxXkNIBeMKMn2PFvE
         FLPVtcES9hvM3mp0jassKXQEJd6+E1w9+7UQ3+yn9IteOPAySGMHfaJc6nl6Kj6ShfGV
         wicfrVX684Jdr8psW5ATuFWufIYWVXbgu1Qbzq/K7qPHQfQ3BPI1dT+CRCo/x1QBdy9i
         9IuupNA+pjl5hKxAMzLvYtbaDqfBCY8ry9N2C+bhUz08Vn0vrQQMx286VWsqAJV1xGq7
         A3nw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3ebd7917si78919701cf.576.2024.12.22.08.44.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 08:44:20 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-251-luJz9vIkMIOng9vXuqPHXg-1; Sun,
 22 Dec 2024 11:44:19 -0500
X-MC-Unique: luJz9vIkMIOng9vXuqPHXg-1
X-Mimecast-MFC-AGG-ID: luJz9vIkMIOng9vXuqPHXg
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6CEDD19560AE
	for <blinux-list@gapps.redhat.com>; Sun, 22 Dec 2024 16:44:18 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6888A1956053; Sun, 22 Dec 2024 16:44:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6635C1956052
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 16:44:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D40A8195608C
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 16:44:17 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-70-ux4a1PH6PWakUKn3wJ04vg-1; Sun,
 22 Dec 2024 11:44:15 -0500
X-MC-Unique: ux4a1PH6PWakUKn3wJ04vg-1
X-Mimecast-MFC-AGG-ID: ux4a1PH6PWakUKn3wJ04vg
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YGRnV5ZYfz4B20
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 11:44:14 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4YGRnV5TKGzcbc; Sun, 22 Dec 2024 11:44:14 -0500 (EST)
Date: Sun, 22 Dec 2024 11:44:14 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: re: youtube issues
Message-ID: <Z2hB3hnS-T8uW2DC@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 2vV2Q_UciOomAsRGnYvECWl6qCBeDkUCTsVm7ykCmT8_1734885854
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 1
X-Mimecast-MFC-PROC-ID: igVWMs9mqImKJyp0JEXo53OSQjuUiO7HbUU4x3NbwVY_1734885858
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
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

for those using debian or ubuntu if you want pipe-viewer this is a bit more complex but does work if you run the following 4 commands:

bash -ci "$(wget -qO - 'https://shlink.makedeb.org/install')"
git clone 'https://mpr.makedeb.org/pipe-viewer'
cd pipe-viewer
makedeb -si
That installs the makedeb repository and makes and installs pipe-viewer for you.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

