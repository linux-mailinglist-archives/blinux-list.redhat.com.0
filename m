Return-Path: <blinux-list+bncBCFJ3VNT5EIBBTVH33AQMGQEGFW23KY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CB3AC7438
	for <lists+blinux-list@lfdr.de>; Thu, 29 May 2025 00:53:04 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-47686947566sf4887051cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 28 May 2025 15:53:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1748472783; cv=pass;
        d=google.com; s=arc-20240605;
        b=PKUEkDAAaGNLXxPaRLQKw5zila/mQZpyjVFA/Bkyb2vTCDv9Uw39zlnwGtOKlb0Ct6
         jXttcJDzvjUkUhgtEzExhKrNwdkc+YppiHrJBMeuON+BePnpaNvuAhpT4cKNASjCgmSi
         3gG7s0tfg6Q9NPnN1XZelNi6HFp2a6tPyfTvLIdpBspYO24K6mEdHpZ5HOvXd9k8jEbE
         RnuPiy0tAlOigqO+A8aL2AwE7CLO2jmCqghr4aRcaw/WOcl63HNStycVqKwVMaLDrxLQ
         3R9YqcZhqDaY1BG6dvj1ccZ65f0Gi+YLyUEgs8qQLgRBV17HgFJgbpp98Ft/a3Dr4Pl1
         CDuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=bF488/l/0O1jnfJDzB7UWvETD4qt6h2KNa94y+fBxsk=;
        fh=od6ph99CD+wt47wEt15Z6Pbx3pGuqgkp1g9EW4FnXjY=;
        b=ZbYvusXpbneGIqALDJL59MPWkCbhdnXsV23TvQ4Sp0RmEtw5j/hMaYUnxSsn8yfg+a
         GT3WbpIjGiXFCoJOmgSIgIJMA1JrndsTv8IN6DPf5DS+PcRhoxUg6Z93l6AJWzUGrXOS
         Aq2bmlG86quvGRW4xFNvNqsct+XId0B6t/XClpZ1bDUaExwbvyWWrt8iNcKzU1pAJjFk
         LImnpFRdseGlasB1xB6fWQFxD6L6YAzzefzBC99PsJBKWDD5j9PbupBgqhTIhAM2ocLd
         9rBRi0AayTYZr9YeuvwYzekTR2/mjGxW3nKBWCFopkHPe/sYrkSEfKdVIePaP14ABlMv
         l5FQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.128.170 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748472783; x=1749077583;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bF488/l/0O1jnfJDzB7UWvETD4qt6h2KNa94y+fBxsk=;
        b=X/Y8l2Xdr3JKPIQxx6BDxo1dIDZf+i39Q9b2luNNJN6kRE770d2qWWxPSKUlRB1YAv
         /z0CQpX1wdu/Ss372cU3gJ5fhpey+PzPsHrzfDkvojwCIHAAUEmGgNEO/YhbpHwK2YKf
         wG28fHQ6x8AfXhFxFyRnwcEnD1pDGrsexOcUDMWOZfQA1UfgoO7o4ViGUAoU3D5uyYh1
         A7ZyONmSntzUOBL2h1y5NjbTky7mJC0ZKc8/T7Ziek3RwAnbOlNnDRp2I33xVxtyFU3e
         VoI7s4qaoswiymOnTac7twTo02mILvqXx7eihqm3bT9JFa3B+bZcMqHz73tfEIFZN7rL
         rhVA==
X-Forwarded-Encrypted: i=2; AJvYcCU+Po+Xuk7PwZrjwAXNanVKlbfol9b+x4dAqa/0r8olhhDwo4DY241Voe3KXNZkXGYXch/7EA==@lfdr.de
X-Gm-Message-State: AOJu0YzXKTEcgds95FJwVeTSKSY6PI47Wx7M8bjrIMP/0/p3Y7x8/KCD
	DlmgaxEM5eeJbfLDD0oj4/bbRd09kwwgu45DoNSdZcAmOQkiNXb9h47o7igq52sAZDI=
X-Google-Smtp-Source: AGHT+IEXd3sCJfE7GXtSnD/LIo6U2xEKEZjJYz5rdWa0IZxwjkIFa+v0QITyBO+SbgVLWpfUFBPvKw==
X-Received: by 2002:a05:622a:8cd:b0:4a4:2f0b:d2e4 with SMTP id d75a77b69052e-4a42f0bdc46mr57290861cf.13.1748472782620;
        Wed, 28 May 2025 15:53:02 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZeDm0hX+QEoNl0KG2OK2AwxBEcdxuqHS/3ZOoO9S7s/ag==
Received: by 2002:ac8:48cb:0:b0:477:c8a:e60b with SMTP id d75a77b69052e-4a43243f0e8ls5645801cf.1.-pod-prod-02-us;
 Wed, 28 May 2025 15:53:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVY+lCazj0cLTLoEf6LBB8sY8sS4qYIZQ5YAhe91g4odKZW6O63e7+Vnk0belI73UdsC+rkADWr529CVw==@gapps.redhat.com
X-Received: by 2002:ac8:7ee3:0:b0:4a1:36b0:f4d8 with SMTP id d75a77b69052e-4a136b0f8eemr189732661cf.4.1748472781564;
        Wed, 28 May 2025 15:53:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1748472781; cv=none;
        d=google.com; s=arc-20240605;
        b=XoV/G1i5CgGrYQdUQasJyBTjKDba5AC9VnYCFnhYM4CEk7akp/OgRM0o9RaFee6dAn
         +LAweQPlMOwE2SA7fvEynhKIRs5IiQ7VRKnubvUtmVkXrOS/p03OIINkPdKdADWz9Y47
         PMMY7MaDLUP5Q6I4ItwOXLgvaMl0mZzmN2CTtsrCY6TR/Vnt2ekD8Xm9Ttl8vacu3ime
         x3r6p9/WZNjQCIQw5q2+7VeZoDSPt6xlTG8KytERzQpE8vYT6BONUhrkl5IjVv2mbV2w
         uuXcZDNVlWLKh80kdKwSSeBqStY+hZJEPL6YpUvBwOd0UQdhwjCgMrwFerlByxZcyz06
         AGcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=xQr6BPlfWMzQ3iwBGxz+Sm5WxOVzRIhSAFJpsDEJvmA=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Uo+CqbITmLl+Dp6/+ciIMWEa2vWInBRfKYP+84GxfRNPXguJnjS52LZRBVeae6Q0YE
         WDmPPD1I2RVycGzt75csN0TSMUdpvw8nlcS8aJopGcDeynbzJJMRx4k4h7bji9QsYZqA
         zN/zlkNHZG8ZzAUVnuCCTGS3xBq/KWKcvUzZ28R7X/W6QE8N+YH1Uy2YbMb7sSkfkAE+
         wj/2NYJuu9iuWawicWlqSg9g8+sErV3P3i0cpP0ax4YXsnsdS7keVkMYutKfFkG0lDDk
         injshQuOHI+DYUDZWllwXPQSHHbbQn5fAmZ9z4e/AT8LQ2RGY0q4Q3yvL+owHfJ7oZtY
         +taQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.128.170 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4a4359f95casi1381671cf.237.2025.05.28.15.53.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 15:53:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.128.170 as permitted sender) client-ip=209.85.128.170;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-640-wt0yIpmVPyylCnHDUF4yhg-1; Wed,
 28 May 2025 18:53:00 -0400
X-MC-Unique: wt0yIpmVPyylCnHDUF4yhg-1
X-Mimecast-MFC-AGG-ID: wt0yIpmVPyylCnHDUF4yhg_1748472779
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 380F1180045C
	for <blinux-list@gapps.redhat.com>; Wed, 28 May 2025 22:52:59 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 161CB1955F21; Wed, 28 May 2025 22:52:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 131B21956095
	for <blinux-list@redhat.com>; Wed, 28 May 2025 22:52:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8A41A1956094
	for <blinux-list@redhat.com>; Wed, 28 May 2025 22:52:58 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com
 [209.85.128.170]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-290-V8ZP2cv4M-q-9Td23XGq9w-1; Wed, 28 May 2025 18:52:56 -0400
X-MC-Unique: V8ZP2cv4M-q-9Td23XGq9w-1
X-Mimecast-MFC-AGG-ID: V8ZP2cv4M-q-9Td23XGq9w_1748472776
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-70e2b601a6bso4269287b3.0
        for <blinux-list@redhat.com>; Wed, 28 May 2025 15:52:56 -0700 (PDT)
X-Gm-Gg: ASbGncv8PW9LqnykEpP5TnlLPI3+hZtJEki3eWTYGeF9vO9YKuNQIhvbKO8709WWFpy
	KwDn+sLNpXrNWXf02y354tI0qdvSqjdV5F+6dN9YHhfEc+CSQlFrFmW7x36vAD5C7f3o7HgUxuY
	A+AnCE0w6MTsq+w/OL9sh7I+/owtO54QLt6CB+kClqEY+GwDvkh5pqLxhQ7CSdUoM1nLpNkXs2o
	hJ+HEFUxPdgKx9MzF8HjFgXv57w4BF7XO9JakXYQzEXpul6HjK875yt4vRlB6ieCV4QWFpNi8zK
	K6XUYrncxfWzRFikbLwvU6FbzVyQnjqG+56+RdIgADrJDzzgXzUzublywtkDcPUt4i8O7FJ9zzT
	3iwpfq6oh
X-Received: by 2002:a05:690c:4901:b0:70f:88e2:c4ae with SMTP id 00721157ae682-70f8b922b83mr617077b3.37.1748472775722;
        Wed, 28 May 2025 15:52:55 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d108:c31d:f4e9:918e:e418:177d])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-70f8acd4ee4sm265107b3.83.2025.05.28.15.52.55
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 May 2025 15:52:55 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: pi 400 and orca
Message-Id: <66E77BE5-B80F-40CF-ACEC-4543D71E4256@gmail.com>
Date: Wed, 28 May 2025 17:52:51 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: NY5jQiBVOerJ1c0gfzSXRgVCvlbiZ9KZ46qt9uq5Bls_1748472776
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: SZwGI-HAzG1nSQYT8M5FVGCJjxHF8elDHhA668qBec0_1748472779
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.128.170 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

With fedora or ubuntu on a pc, the system needs a monitor, even though I have no need of one.
If using a pi 400 must a monitor be connected for any operating system to work with it?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

