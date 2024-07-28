Return-Path: <blinux-list+bncBCRNHOFA7YJBBYMDTK2QMGQEVWYB6QQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD1093E8CA
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 19:37:39 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-44f76198e97sf44383351cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 10:37:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722188258; cv=pass;
        d=google.com; s=arc-20160816;
        b=AtCIPuczborqPgvQrOftorXC7o6aK8q3NFcyEKJOtzidAsnqkHfjyHmpqe+pD5f8oV
         /Bz4l39s7+/H3oF/swncyVgCIWfOl8gx4Y3vQP3WnOvh4ubkMGmwzH5obWhdbXu58xdF
         waAXIRpan5HD1p4xOrFNb7HPE0ziNVSsLuxymInaL6Er20468RV1XxtFoF6R/14a3bvg
         TB8ehgvAcYPbxSUgnrOdbjX29XGD7Iq/ApeNSaeT/V2qpVUGHFmstufemwnSbzmALnGi
         Epl+JkkLF9lJA7/1tj49LMkO+G8mk8vBwwljigwOEt9RPl1hfdJVDVPc0FgzkYsma2gO
         OB2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:references
         :message-id:date:in-reply-to:from:subject:mime-version:delivered-to;
        bh=FiSf+wBjQ0LFvWUv5VCAHqv00vf8KLnSyPG9250/ALo=;
        fh=3I9jaVoFaigsLPgAOIVVol/qGDPpPTr83UsHrbA7m7I=;
        b=PmHz8WJHrLZqxkACAxqISRplLbK8y1Y1PSUb/rcJLdnpdsOcEq0JjJxNEpCvhp5U6Q
         DA1WfEzBi0Y0y7MnrunMIpC9cIXIw5+YJIFVwtpkpfKJOxAq5dA3fVFciImcro8mr1FC
         VFuUnl7klIl38fVTJdybbnsBjadeyF5zq62lohYSnxVotpsrpiOv8LkFg4YuL/zT36it
         ZccvthB3ZxzBg9Un2+5MVe0OXwKichCzIkXIhYcE0gtEvHzzf42xc4mXBoFvyr1lFo5a
         o0mKptwswHmc6E7Q17cDGtjb7dr+ECD+Mjj0GutjE7Ksw0MY+0G4Q5gISSrvPJaA5oOy
         nuUA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.210.171 as permitted sender) smtp.mailfrom=rdm@cfcl.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722188258; x=1722793058;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:references:message-id:date:in-reply-to
         :from:subject:mime-version:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FiSf+wBjQ0LFvWUv5VCAHqv00vf8KLnSyPG9250/ALo=;
        b=TagE+tvK5F1G3sEdRuRA4QzQDWFBqafx/XrIagregrvkjhFDzKoRdFVBnTIISotkqV
         HaA/c0PaPPxLyhk9fIMtP0s8t6XVJb3VtCI6ScYjBMyRbgbZAhm+bwIIYxha5N8uaar8
         UkC7SNK1N24VCj+AJE4PgPPjHu2DbrwymaOs2LXfxwzrnQlzb03bPKm/kQpm6LIhXxKS
         +xggAad932G4/wF5Vry8qPnCREt30OOSAAFhPQv/bBBMvz+b//GET61RBM6rsak3oKwA
         ZNEZYjqsvXYCfBJzKQ3Hmu5fbJYeMQKB0Y9iyQ80LzWm74RjsPRuZ60leewbLWRWyEv5
         O4OA==
X-Forwarded-Encrypted: i=2; AJvYcCVGtbPrlZEb6r7xyKadF+uY3gB6t5gUkJy3NF9jbp3vOaxY/ykGeAOfWNJCoxObOrOHKC9I6KC2xWJtBIgiP1Q88dbwn0BrZetm
X-Gm-Message-State: AOJu0Yx3P3Ass9iKgLEKv9XiKJXrJSQbT/eWWlSQjkx0YYs9oVQoN8K0
	jdQFXsmglxRXOVHxtYjWKagy+k2YLoiF31BGgoTmBUIYwtQElP8o9yRO4eANwX4=
X-Google-Smtp-Source: AGHT+IH9JLfeaY0piJy6sk8i9YOYwcyeq0NmEOnSLuDvdFTsA7ECyAmoTJ66dOH7aksW6ALJrx284Q==
X-Received: by 2002:ad4:470f:0:b0:6b5:2de3:32b0 with SMTP id 6a1803df08f44-6bb562f8c28mr80743646d6.7.1722188257742;
        Sun, 28 Jul 2024 10:37:37 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4c12:0:b0:6b2:a43b:dc38 with SMTP id 6a1803df08f44-6bb3c06d97els101097776d6.0.-pod-prod-00-us;
 Sun, 28 Jul 2024 10:37:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUv9nNe8LOLKm61Uhc3CzGrmV3ARSpxRL9siiYc7AndmbrnWI/FSAkO2rNQvkH+8F3ulBp+CTTE53IBOeyG1FLvmfdwRTMGOvBh7+zQ
X-Received: by 2002:ad4:5964:0:b0:6b5:7f19:e61d with SMTP id 6a1803df08f44-6bb562ee0e9mr108757096d6.6.1722188256768;
        Sun, 28 Jul 2024 10:37:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722188256; cv=none;
        d=google.com; s=arc-20160816;
        b=RjWcFk7LR1FDF0mzJ7fagjlNV4U2RBPE1Zvgola/rgIeIBFqpulW0W0kaidoofFp6c
         VtbdMd93hnn7K5rm3Kwthk1Fg4oUw9svSPiY3K0IWWibSmEIEy5y0EYhzeWvdYNikGWw
         8bI3gnlaH6cbzUMFRSjjgoiG8NlTnPDw8F/gtS52lKt7Y1jEsZJ0hF46jWMj1ocbMZqI
         +a3VTp/OEsQjpqCEfvTkqz4yDIoiqQfAGg3N+C5BzVX3E0H0Ou2ZQRsRNwm2qIBMNV9d
         ROeIyTgCkc6skBdSBk4jyQvxU0c0d4mRqLkW3h3sHvy8XtasLZVwxVn1a/qD75hs/pkm
         uV3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:references:message-id:date:in-reply-to
         :from:subject:mime-version:delivered-to;
        bh=8r0VkYoxXta0j5vH0nipnryx5opdPfiUvCmwhz07kNo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=IqwRRwtzXkuwyCkJNtXGS3pgP1wtkQqwyHr3YepXgFsAD+X4bv2CB+h+3Qy4yLB4Zd
         x9zb9BoxNxEscKEylZr0oM45eF49F1PFjmU9EeMAzbjtsjr4py/Hsg0CSnTJKwFOTEm8
         RFHU9caED1QwMbNAIkCQJ4nPeSxayN1LnB3cYqzKQ7Mr1oytUcWz4t/OQLEUtqKMrbzM
         SarS17MeMs8b7QnRvQ8CXlhnn5bWBQMPOZp/NMSYAvGXxz08ICaQII9RexkV2+7x0UVy
         L+SFQVh+TbtrYHyf4znisp+z9LrVpCSoRSysjY/2TbRlMdrYkqrV1BlkuB8skmQc+ZmS
         Jo3g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.210.171 as permitted sender) smtp.mailfrom=rdm@cfcl.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bb3fad65a7si90129776d6.467.2024.07.28.10.37.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 10:37:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of rdm@cfcl.com designates 209.85.210.171 as permitted sender) client-ip=209.85.210.171;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-675-fw5WPSGxML-BM7TRQ5l2WA-1; Sun,
 28 Jul 2024 13:37:35 -0400
X-MC-Unique: fw5WPSGxML-BM7TRQ5l2WA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 46EA11956064
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 17:37:34 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 35D271955D42; Sun, 28 Jul 2024 17:37:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 337F2195605F
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 17:37:33 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6A87A1955F43
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 17:37:33 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
 [209.85.210.171]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-111-ZXUKtWYBPOmASZnchPfxZg-1; Sun, 28 Jul 2024 13:37:30 -0400
X-MC-Unique: ZXUKtWYBPOmASZnchPfxZg-1
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-70d1d6369acso1555821b3a.0
        for <blinux-list@redhat.com>; Sun, 28 Jul 2024 10:37:30 -0700 (PDT)
X-Received: by 2002:a05:6a21:3483:b0:1c4:85a2:9958 with SMTP id adf61e73a8af0-1c4a11582c2mr7966615637.25.1722188249265;
        Sun, 28 Jul 2024 10:37:29 -0700 (PDT)
Received: from smtpclient.apple ([50.123.68.107])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead8af7f3sm5510851b3a.204.2024.07.28.10.37.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Jul 2024 10:37:29 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.8\))
Subject: making YouTube (etc) videos more accessible?
From: Rich Morin <rdm@cfcl.com>
In-Reply-To: <8eedfc39-ac45-444b-8759-c76cb94406b9@jasonjgw.net>
Date: Sun, 28 Jul 2024 10:37:27 -0700
Message-Id: <D4A63476-AD01-4437-8F3B-AF0EB0B214B4@cfcl.com>
References: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
 <8eedfc39-ac45-444b-8759-c76cb94406b9@jasonjgw.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: cfcl.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdm@cfcl.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rdm@cfcl.com designates 209.85.210.171 as permitted sender) smtp.mailfrom=rdm@cfcl.com
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

The discussion of scanning and converting PDFs reminded me of a topic I've =
thought about a number of times.  Perhaps some folks here will be intereste=
d...

I watch a lot of conference presentations on YouTube (etc).   Typically, th=
ese have been edited into a collage, showing the speaker, a display screen,=
 and perhaps some graphics for the event.  The display screen generally sho=
ws styled text, bullet points, charts and other graphic images, etc.

Although a blind person can listen to the audio track, they will miss all o=
f the visual content.  So, I've wondered what the prospects might be for im=
proving this situation.  For example, it seems like it should be possible f=
or software to:

- pull static images from the video stream
- recognize the region containing the display screen
- extract text and layout information
- convert this to HTML
- synchronize the HTML to the audio track

Or, in this age of LLMs and such, perhaps the software could analyze the vi=
sual content and be prepared to discuss it interactively.   Might anyone kn=
ow of any work in this area and/or have thoughts about how such a facility =
"should" work? =20

-r

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

