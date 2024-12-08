Return-Path: <blinux-list+bncBDYPVTOXSQEBBFP4265AMGQE36JDN3Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAF39E87A2
	for <lists+blinux-list@lfdr.de>; Sun,  8 Dec 2024 21:14:15 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d899291908sf114864486d6.0
        for <lists+blinux-list@lfdr.de>; Sun, 08 Dec 2024 12:14:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733688854; cv=pass;
        d=google.com; s=arc-20240605;
        b=AuDC8nxGj6/CYx0zlI/3QsolZATGCth1jjWRDfaXx5lU3DTxyU4mgsEy5nkXJ5qFuJ
         TUq+Vpl4vcn3YrmvIAAr+o9q6ltkfneo4gQqZB55/3pf1N3Auc5It26XQgoZomdtdASe
         9VHDEs7Sk9xB2zyt3xXx+yT8O744mZ0PZIMyb2TqKPVz+CyM6lp9zFLU0Gg5SR3lSR5u
         3dbb0Ab0HE4LY/6aj8S8ubkDaDPLyAJ3Xdv2kidYTTO0CamoIW2FeTa9RWBD3BrgmKOE
         zON/CMiKdkmM0A6odSzKH/rC/jQPTiJOIHvin9lvCHn36gNM1WR3VeTz+/JmVbKea1bq
         2Vxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=OOfOJxxbSnZhMmgCh3wEH1kSRGL5kHeddKgfBR25MQg=;
        fh=ahC711UF0mWkV6bew4r6kIcSQicWqFiMh25VJgzw6gM=;
        b=HhubH9SnyHRX4qJJQg7NwhqKbnC6liXEDHZSlrsVM99F9PWtbGvyzajSfZgpvF3Sw6
         g8FBPukDmEDjNFFjNS4RazT7iTu57ekE5FveMkEX9bGlZd2HgsNApZmKMZKoS464H88U
         s5UTV7nbKGH4fDPQkn8FsPwCkKc5FHAzSbGdOuEr01ApLy7WuIVNfetiQTrJL0qhDuUg
         nWnceIGRkYsmR5ih7wP+RjFbMlDieusf8oHPadGunT+C5b/ebgl01cKFgw8KxbOPDskP
         sM0fYks5NFfblrlM0pJJZMCHrAMS5tCFTQrfuvhC1hojO5kNWG1hICHzbXUIKu3Ci3Sy
         bV/w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733688854; x=1734293654;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OOfOJxxbSnZhMmgCh3wEH1kSRGL5kHeddKgfBR25MQg=;
        b=gl9NFe8B0LnRNVbBEZflnjTZ7TzobC7UcZ3EI66NbxouwJ6euhMsNtXhnpl+ISzlod
         l+YMr2xRyRR5AMeJB+5rHvRQcRxCi+/PjARq+oDJqALXQtpDGnk+MFH0T/rYGgTm6dGD
         RXbV1fTNNiYG5T7m6Y0SjNI3hz0wl4QBM2DUNr75nGCTT78d+MNnpS10tbGEeYEgOasJ
         aMwZNtvzPtBzdscpSfI+8e6HZvjLA80hZMJ5QjCE68FZpf+w1vjHDdF/nqQPQGVCmZA1
         zh6KceEyFvjSNu+ZUyGnCNO4OhqYzyJW+Lv0NNNgV1xLW9Eo/SCHnDGe1FYzPlpMPTsD
         J6PA==
X-Forwarded-Encrypted: i=2; AJvYcCXG+SDGaiIiDU5sacHbnvIXHyvSWHuc1SkHYcg9h+aOQFmICrurXdzxCyYH4Jt5pFfAc5QHJQ==@lfdr.de
X-Gm-Message-State: AOJu0Yzjib6fi33sUd+owd+YqnV3b6D7lG4jYcyBBnpFpUs/86Sv1LEt
	iAu0n2xeKXCQej7QOXIPmKnMcVA8pvrJ63T1u/BdnI7Ws1EZuwQyUCN2gARv3Fo=
X-Google-Smtp-Source: AGHT+IHLS8wbgONlCQkXl1r5FrenSPyVluu8IVeclQEekIZXPWQ3Uqdbr5h9csMvCv89cdXk1sDoAg==
X-Received: by 2002:a05:6214:529b:b0:6d8:8f3d:4d82 with SMTP id 6a1803df08f44-6d8e71c73f7mr157955626d6.46.1733688854381;
        Sun, 08 Dec 2024 12:14:14 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:c45:b0:6d8:b292:1e1a with SMTP id
 6a1803df08f44-6d8d6fca0e9ls60752966d6.2.-pod-prod-04-us; Sun, 08 Dec 2024
 12:14:13 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWR6tHIxtJMH+j+A/ZAv0sEEXd8mjlgKhxirDDnEMctUayqszkjdxfaeFKoiN1XT8ET6oWLm6RSeb+mRw==@gapps.redhat.com
X-Received: by 2002:a05:6214:2029:b0:6d8:96a6:ec1e with SMTP id 6a1803df08f44-6d8e707dd88mr223019746d6.2.1733688853317;
        Sun, 08 Dec 2024 12:14:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733688853; cv=none;
        d=google.com; s=arc-20240605;
        b=iTV69CisuMZ0oNzZUwmWCMhUTcWv9ByLEsaUYjKYim//6z7hhOwwD1/PMpht4hsniN
         kH4lx4DbVp7NAIg9/cypiYHQ0523fz3aWAiWOB+zfflGmbhS4EDwevZWSFkel8JAcoaa
         BOZlVs/20kxVJwhIyMhGg7hAFoe6PTwKOMmY0Zz1rGVdMy31aW9SubDaoBCh18GsZG2D
         SFCUpheg+thFTNPTZcQS3Uk8425h3QMuqgkxLzdvYgiTiUks7TkAFIYwXDWo89cxwNO2
         5F7xuWBVXynzqQhQ2uSw2aXQJhvqBH0FIPJZGIzgzxPmsuNgzcWccGxHypNHuZSkSZMj
         hu3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=/YWfD2oPH5bX6RKRxAm4Aum/gfwG+Zve0CvG3neOvkw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=CTERAecgEjkmr4NJ+IBhYhRYBf/s0Byyae1pChPWi/Gmfhot6vKtuPCmjZo/4+8siz
         IQzSECr19SU4+ysoCUVCee2jhP4cfZU1YkSUBIQnp77P7CrV2uXZjAvobWzaq3l+4vT9
         oArR88mFDjVrol5gz21Rp4WQvhVSB9lZzbXq4cuodYKNB5t5iIJeZ+hDmfYwZFfYbl7e
         c2NmHKaKbsJw5tKWI7IPcaPqCGX/HIEeicbj1B6o0dhhT1mGnRc72VpIkmF2RUfEnCtf
         IG8NDmLEyAlikIL19rGd3I5bCdREBkBZV0gI8/o+5udRqykoA8AeU8WwcqFlJeG3Lr53
         lUWA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d8dac24bf4si95053226d6.412.2024.12.08.12.14.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 12:14:13 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-438-Sg3cdZw6NCKYLsVUnRN5Mw-1; Sun,
 08 Dec 2024 15:14:08 -0500
X-MC-Unique: Sg3cdZw6NCKYLsVUnRN5Mw-1
X-Mimecast-MFC-AGG-ID: Sg3cdZw6NCKYLsVUnRN5Mw
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 52B421955F28
	for <blinux-list@gapps.redhat.com>; Sun,  8 Dec 2024 20:14:05 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4EACC19560AA; Sun,  8 Dec 2024 20:14:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4BF0A1956095
	for <blinux-list@redhat.com>; Sun,  8 Dec 2024 20:14:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A36F4195609F
	for <blinux-list@redhat.com>; Sun,  8 Dec 2024 20:14:04 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-84-9r_4WQa0P_ezLMjdNHlr2Q-1; Sun,
 08 Dec 2024 15:14:02 -0500
X-MC-Unique: 9r_4WQa0P_ezLMjdNHlr2Q-1
X-Mimecast-MFC-AGG-ID: 9r_4WQa0P_ezLMjdNHlr2Q
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Y5x615mY6z4RGP
	for <blinux-list@redhat.com>; Sun,  8 Dec 2024 15:14:01 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Y5x615NHkzcbc; Sun,  8 Dec 2024 15:14:01 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Y5x615KDxzcbC
	for <blinux-list@redhat.com>; Sun,  8 Dec 2024 15:14:01 -0500 (EST)
Date: Sun, 8 Dec 2024 15:14:01 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: tdsr keyboard question
Message-ID: <cc7d1f13-7033-6e9c-015b-08ed96982d3e@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: irs8T8pqFyyy8za5NdS65krmWVw530jzZEkSbAuEFdg_1733688842
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: JL-PdqZcMam2BHkAh5QvCsJyOrYmQnRx65p4goF8L_E_1733688845
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

We have alt-r to start selection,
we have alt-l to select a line,
we have alt-s to select a screen,
we have alt-v to copy.
What is used to paste what got copied if anything got copied?
I'm using this on a chromebook and except for this area am having success.
the readme.md file has mac configuration instructions that do not apply to
linux or unix and those ought to be given a proper title.
The alt-s for speech server I don't have any idea how to use.
A few step-wise examples would go a long way to helping new users fully
understand this screen reader.


----- Jude <jdashiel at panix dot com> Q: What borders absolute stupidity?
A: Canada and Mexico. -----

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

