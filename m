Return-Path: <blinux-list+bncBDYPVTOXSQEBBLPH3CZQMGQEAPFYIYA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mail.lfdr.de (Postfix) with ESMTPS id C355991318F
	for <lists+blinux-list@lfdr.de>; Sat, 22 Jun 2024 04:15:11 +0200 (CEST)
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-63bab20b9f4sf40981927b3.3
        for <lists+blinux-list@lfdr.de>; Fri, 21 Jun 2024 19:15:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719022511; cv=pass;
        d=google.com; s=arc-20160816;
        b=LIfQXDN1UMGYbmMJm7a2ZerOTxuZdE5V+vmGI6gqm/dIIEixhkh6M2OU24yuCJh/X/
         amc5TFolfHNyCq83eIjjp5DSr0/EPBDfOTUpEucHntXGj3pqAUVCvtoZLjp3SKm/g6kE
         AkRoqEQfuH+iHFmlQ5oAHk8haeuORGiySyTF2dq8qZhh8EY6hnz6DEXMf68+11e5KkwI
         3Be4JmT7YHpZZ/cPrD6Tto0v8vAGv/zUvmlgLkuMl5mlLzXTNdb0yfAsirZKYPdd8nxj
         4LujSoW6P0/839yiGr1W32DqVI+JB+3a+yw/em3Hq1fViHwR+6OPMpZxrDm99u7dvwS8
         U6Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=P8hxk8J6SntDsdjnEQZ32hbtE0fMwVLpfz5vQLOCjNE=;
        fh=d5s18gDVR0jybZZnlyB+eiFmKCg110TKBvSGKPod4bM=;
        b=AkhlPXGVS+O6MRGxCFx4gjlIK+GRVt06mlzeBvDXMSY3tjDDQ0so2NG4bZQ0fHHN9c
         jqNDNHPAyBdpOtGLzHOYvZkol55Qjparp/RgdnBVEHoDNtlCvNjV1sCVOYQ5fTYx86r0
         XvOVZSyMvSSLZ1fllfKK/JeLbNH2PUsPConI+I5Lxh0wDJyk+xPRfp9qV0bgIdS2qbiV
         GGMCG3i+djfr9N5HL8RgI542jiBUqmxNAAfrnQ44uyBzt23lS/dTgtIBjk4WQg2qUt5A
         YjJLPfI66oBiKdslOBOhedDrtZ1OqC/Kcq2Qh+kUUvwxDLW2IbDaJ6+PRMc1h/82GYau
         cvQQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719022511; x=1719627311;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P8hxk8J6SntDsdjnEQZ32hbtE0fMwVLpfz5vQLOCjNE=;
        b=RhWAxh3tmx/EiYXm46qQl1OK9QlEJ/QCO6HxcJ0DNirI+1xZUirS8BCJrkmze2fN/B
         gsbyMP0w3utULb+/CpKffa4f6mc9++H8Y79zpl5RjiIR7okZGG6ven1X2ZN5yfhrHY0K
         Hf/L48M8RpVNVQ26H9oQNe0w1lbFkjoHJFXskzcu4gUgz0wlqvKCJqpA+krgluw4FcsX
         dZF8SI2pdYdg0OgnyZFfxRTKIGFr2EDat5x1lDoWMO12krRVgQclWCsuaj3rVma1g/xG
         3urtW2EVPkWah+GKB/9q1jts9D18UupvLCWWzE3okYY3srv7XpevEypU0aljmSvZCOku
         y1Xw==
X-Forwarded-Encrypted: i=2; AJvYcCV+3tboIoCPGU9oUbZM/ExTQBpND4ojUMh75+CbeiQzrPYvaTNQOCDBrvILNDAQ00DxGHmWt0otCA0VSFvOwnttnqbrJKhV1qqV
X-Gm-Message-State: AOJu0Yx8CkxEpzg75MSUztowopwBrtwQrE4RZnExMdrVAeJI0eWEUb4u
	41uMk20mGHhtYYorhsgfwjzZvs8tICXOLJUOPBD8TD9zWCoGQsp65Rxv2SFw9XY=
X-Google-Smtp-Source: AGHT+IHlRbZrO1WKofEX2HWwPtOrP+gY1pSX0U4UGy6CgKEfNx4lqdtKRwhkJ7rgnH7R8LN+vzx3QQ==
X-Received: by 2002:a81:ae18:0:b0:631:53e6:9271 with SMTP id 00721157ae682-63a8deed8bcmr100321037b3.19.1719022510448;
        Fri, 21 Jun 2024 19:15:10 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a23:b0:444:ba80:ee28 with SMTP id
 d75a77b69052e-444ba80efb4ls29426811cf.2.-pod-prod-04-us; Fri, 21 Jun 2024
 19:15:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUhTmT4cXQRo3EB2PCbia5zVI95Y4UtuTQiBPKiTqUVWlQf0VTsTjTi+lGFFpKIbioFzB5ssfwQEyb7TtTkXp0kKqqxDsmu+mK3Zo9j
X-Received: by 2002:a05:620a:24d4:b0:795:4948:328f with SMTP id af79cd13be357-79bb3ee5abfmr1042574485a.70.1719022509281;
        Fri, 21 Jun 2024 19:15:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719022509; cv=none;
        d=google.com; s=arc-20160816;
        b=NrrULZHS5OMTMVBfRBVB7BRSaMdyN1++rWHXvqEHDrnfqrVDTdOVliGNzwlTo1cB3F
         xLhCYxjxtLB3UUO96lXspJqq7ErcK080pM7Eso3EkFzLpZJ+yXaBd36qJbCxI8sozN4w
         b8bwycqBCcVxBdvMURr11EvfujyHZU4mheahBXKiH1mjtrRyoVX2wKrKxh39EgL77okX
         dBH7h8xOb858Y7j1zs7ydhxF0oyNrkDO4JonMLJvDCFpiZB4l880pvr+MZZyu/BlSPPr
         BgoRvkFFCVRBaPap3qG0VlhLccLV1/QzsSZTQ2QW1A2sk5bJhnrwugg6HW7VPojPAvo/
         1bZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=FJKvn42kswtKgUNTRvDyJA+FIQOVPTwIrXbCcN+GciE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=PzmhMcgOnqZiR9SKa6rABZ1iX3Yw3G1LwpLsNwRroRs7SkScwGTR4/N1BWH64FIqVt
         s5OwQCFYJsuKxWvs3QSAMKlGLlx/xcR4KWOEPBMBPBqGt/17xx4bQIxNsI8jbeHODMDx
         kj7zs6OuDAKC4uf1UoFBCpr/+hYCVyt6jec/W/hObSDgTbSc2z6bqLSJq9159ODG54Bs
         ROf1zXBeHD3egS1V/EUgffLaoWCeI3nzsHgUvqe4maXlqm10SdE28ShbIZXM1/UXYVGn
         SA/d1Q6k06vmiatVZ8iz213NHnxStmSU0H9J8d5twxmOzlXDyoxkwvb01+cgPuXWHdRS
         QK+g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-79bce95dca5si327646185a.761.2024.06.21.19.15.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 19:15:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-385-aiXFMFaJNg-QGRCjwgxyKA-1; Fri,
 21 Jun 2024 22:15:07 -0400
X-MC-Unique: aiXFMFaJNg-QGRCjwgxyKA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D524419560AF
	for <blinux-list@gapps.redhat.com>; Sat, 22 Jun 2024 02:15:06 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C4C243000219; Sat, 22 Jun 2024 02:15:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C25123000218
	for <blinux-list@redhat.com>; Sat, 22 Jun 2024 02:15:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 454D4195608D
	for <blinux-list@redhat.com>; Sat, 22 Jun 2024 02:15:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-631-hp8oTR87PMiP8vetWG6E8w-1; Fri,
 21 Jun 2024 22:15:03 -0400
X-MC-Unique: hp8oTR87PMiP8vetWG6E8w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4W5d93101qzlKS
	for <blinux-list@redhat.com>; Fri, 21 Jun 2024 22:15:03 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4W5d930RwWzcbc; Fri, 21 Jun 2024 22:15:03 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4W5d930GDTzcbV
	for <blinux-list@redhat.com>; Fri, 21 Jun 2024 22:15:03 -0400 (EDT)
Date: Fri, 21 Jun 2024 22:15:02 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: re: jackd
Message-ID: <70841c5c-9d31-25b5-20d9-1775d70d5475@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 1
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

Turns out jackd wasn't the problem at all.  I neglected to add the user to
the audio group and once that was fixed everything including other
multimedia packages now work as expected.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

