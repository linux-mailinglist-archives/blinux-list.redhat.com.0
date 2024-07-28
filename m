Return-Path: <blinux-list+bncBD6J3OOK2IIBBQFNTK2QMGQEQI2JDAI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C92593E8F8
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 21:06:42 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6b79170baf3sf38792936d6.3
        for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 12:06:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722193601; cv=pass;
        d=google.com; s=arc-20160816;
        b=f11zk/DK+7wICr7C+CIQ7oiyCYABLskWwGnHpkx2KNm0SIxs6N9nWjhSGBno2Azu4a
         Iz3bNob9mmCbO7JVZ6bq5US+cighxO9RS4f7c1m6FwaCfdbjXSc3moPCFkF3pDqS2+w0
         ZLAgwNvXdvoDx56dAsE8d5TH30BtTMHJ3dibrwkSiYi0B4iAytZYCvoRRr3d9+51a8vU
         BF+eJoIEY+RfOlo2AilM+tF4L20muqO6VqZe3fHaGrhUdkFmGODxjZhkA4wIcWqoKZNq
         UW81NGNDAKMW3JAen1nKZ6xV18WMMuEtK3HLgNfLdBh8mOG0ttB8THYySRTrqFrJSr2f
         kBqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to;
        bh=1DhYcnhsqg7wmmnogUkmg/S3nwVivcPrZervW8Wsl6k=;
        fh=MnpKCBtKBvfYg0OWP/z2CWmN5FhsR30Z+sS2mtqwBiM=;
        b=IRXeIRqgZgY5fQ31ilsj28PPxtvLRtB6kGwj7n1/EDQnFsPKiQMjyE49LyqOYRX+H6
         e4OWbJLuK4HvVy82GRpDTC+4Eq7O7tq6Gx0R+99PGePAabCGgSEHm9OahX95UdLBs2hD
         xRNrFaBfi+pmwGnGQ6mtmoCsF5DdfYUeb8ToyAdx3keew5D7vIWEBkJhVetXiyyp5VbH
         9TMBmKAYE+eBZ0Y5Ji9IwWjulnbNkL/QEcexCAh6tdGwfmPzhlcQxZqz5bqftbEit3T0
         YNL0ykOR35B8PB/Q3EjOqKtWOIhw3a2meA/yd1O0A3MG6dIlX58LY0CNVv0lftEdh0vl
         pVhQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722193601; x=1722798401;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1DhYcnhsqg7wmmnogUkmg/S3nwVivcPrZervW8Wsl6k=;
        b=WJA2YwaB+l7439LLlHR6e2p9ihXzmgslrnoaKWMJiZuZVc9VC5zUF4MOC55HM6Vxt+
         YWA6OQQl/q9LUbcUaKFxFFB3GG5EI6kpItjc5FmyylFTPCtIT8E8VvOf5qLMtLdh07pU
         PgYj22/Vru21UiOCaoNbCgCsoSsztRUl7zxF5RFVW6kD8OqvnNy5UdXvDRlh7TxxKI+F
         ryWzaVxBR1tpZRwrZ2uF0FbxJ+z5+4RXBmTrRKszWZPlPED9ihXHRJ4p0hNeOeTwr+Yb
         2sWjYGBy14tEn+i1baIxqGrLZqJjmLCf/3RWEY9Tm1DVnjpvbo1EI2cGfcuwvV/FfJmA
         I52w==
X-Forwarded-Encrypted: i=2; AJvYcCWLTIpoR305Xt8n4D+cABLZf9XBYTjd/Oixdl0WWWxWbhIFlybh7LRQdOw379A51zFPsNYpMGhP+y0+usLkADPb6a9wLhlLe+Gx
X-Gm-Message-State: AOJu0YwHe2U7EU+GxRs2z6w4Fwt33hIAhSdMvZq8a9oJ3rVILZ8+Ldk5
	1xCSlhZd8aDlh3yYoEofkUWDUHZzuxA7gh2iIll8Y1R7I3fze3oEetVm3CeGRyw=
X-Google-Smtp-Source: AGHT+IHIaXaqvigKRi3Y5jrleVRw2y6L+8cLXUe4z336Khj/CA+hUmzjK4Fltx5Hva1xL8kEeWJ3jQ==
X-Received: by 2002:a05:6214:300b:b0:6b7:a154:8b47 with SMTP id 6a1803df08f44-6bb55aee43dmr71933046d6.48.1722193601327;
        Sun, 28 Jul 2024 12:06:41 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:4203:b0:6b0:7204:3b2 with SMTP id
 6a1803df08f44-6bb3c29f358ls61998106d6.2.-pod-prod-09-us; Sun, 28 Jul 2024
 12:06:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVszUggnvWTR7EqZksUKZ6/O7rCWX28yDSnpN4JjPRV+1RHb0JLCjFhiKrWGa28GQCUhC2DK5fBkH06RbUlrKGGD/3zQsfLPYYCZ6io
X-Received: by 2002:a05:6214:d4d:b0:6b5:470:c876 with SMTP id 6a1803df08f44-6bb55a55223mr86572776d6.24.1722193600366;
        Sun, 28 Jul 2024 12:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722193600; cv=none;
        d=google.com; s=arc-20160816;
        b=JjEuQSMqIoI2IirEUsMcoWDoVMGkaDRCwQAUIf5eeoj+Pn+ITA3VylJkXZCm8y1XOH
         Tf2YDWYPdCcXDJXxGMZ0KeNDYhwOB9/etFfBFYiLz95d5cTuIO685RQbKbWTifYvwTS5
         xRscwVI0hJ77XLcjkhFsrzig1JJda29Y1T6JNkn4G0/qnNxYOheFDJbzrce+a7rWYAEV
         rQWT3/eii+XXZ0ekeh2ERZ+3ftNPG87jUmidqwxEa0vjqYsnOPScEre8y3QvBeYniI5z
         mRKYyuq0gGmeCqA2suRAYHRy4slUC2dblhChJ9RPmNTSSzcjWfqVedhucGGLO7SKHtdF
         zR3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=EHkWTMViZ+EmXGW948R1YNIqWD9mBkQM3ag1sMY2V4U=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=tl0s42FvY2bA6vTQvpF0Sn9D5E0+LTCPEjKPGj+ul2jqAxOLJqdBszYvQKQNWZJmuY
         E/4p/KlMLustVmGTTxWMZ6s3wz6Ez1MUwh7o5mc3VEpVytkvbeqD8r/ITW6yXAQCjGu7
         2fbFzaWWtU2AL4AoQLJj+RqL4XyyjMyBN6RGb57/DJPM7yP8mfhIT/PXwHg+nmKU8a3g
         epuY/CrBH+VKOXUljZnhocuyq6mhsXkj2GqJDHlb/SkWv1TnKqPFa6ZtQ8Z/a+3GsUKZ
         plDUlHfyBH7qvgiaUniIVPzwXHP6iGml/IzUAoAs2eyuzZh28sGttautsIVPJbWFrinH
         ARNg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bb3faf4505si87328346d6.498.2024.07.28.12.06.40
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 12:06:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted sender) client-ip=212.227.17.21;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-557-bX1PHlW1NNOnslbz8ubRNA-1; Sun,
 28 Jul 2024 15:06:39 -0400
X-MC-Unique: bX1PHlW1NNOnslbz8ubRNA-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 510371955D47
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 19:06:38 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 252DF1955F3B; Sun, 28 Jul 2024 19:06:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 22BE51955F40
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 19:06:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9536C1955F43
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 19:06:37 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-132-A9rBKJuIN56y7Na3XNUZfg-1; Sun,
 28 Jul 2024 15:06:34 -0400
X-MC-Unique: A9rBKJuIN56y7Na3XNUZfg-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MowKc-1ruz7V1Qgo-00hEn7 for
 <blinux-list@redhat.com>; Sun, 28 Jul 2024 21:01:31 +0200
Message-ID: <20240728.190255.886.4@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: making YouTube (etc) videos more accessible?
Date: Sun, 28 Jul 2024 14:02:55 -0500
MIME-Version: 1.0
In-Reply-To: <D4A63476-AD01-4437-8F3B-AF0EB0B214B4@cfcl.com>
References: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
	<8eedfc39-ac45-444b-8759-c76cb94406b9@jasonjgw.net>
	<D4A63476-AD01-4437-8F3B-AF0EB0B214B4@cfcl.com>
User-Agent: POP Peeper Pro (5.5.3.0)
X-Provags-ID: V03:K1:OWfvOfH6MDIKYpy8sV7sPjyqi3l4zoGI3IKLLK6+nl3hFJjZA5v
 T+ontIlho/hvdZBYA7Oo578Pbtfxy1kRtcORZRpVQ18TkHm33Je/eoDbOziaNylsck5ymzn
 IdrtSXpr7BAXFGugllxniL9HGDs03g49AD5g7AjUt6Sil0OV6MDMrlip3KZEIJA17Py0E+3
 fr/v5TOzpDoV7E2MmKsuw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:OoKLvwU6xYY=;sKh+6lqdm3Hr3FFUFmEleB4eKYK
 ysWE7+n6JujNNpLRXKe62NGB0EFKyGTw9/YB0IfAlwo7+EIXFhiVFTE8nZmN/y5Nwn+Ks+wQd
 hvMFoth4nBs76ktKBm30V+qcBNxVF8baOq9PyfYjYwbFbzvQnGDPTwjqFfH/somxFlUk6uUz8
 TtEyvQ95hNKMZ0NOA6sTEHoHROq9ZYTB+Xfgr0xaP6ZvgLOhJ1h3fNkP3xUhHPlH1SGrmgvnS
 nO/VT6WU/V5NhfduDHp1iZyS1KyLtrojr6eB+uSNoqOSyhMT5+wJAyEi0ODgGk0el/On8yHtl
 Eho73YexzZp0aBNdmG2wue5cbDhNQmy9IjKTUfRYzQyDx7DWn9NJ+jO+zCIkXUGvVtNUIT1LF
 Uwh3EB1Od3bAyDwhh+o1z+oTfE4/5FRDhk2Gc4p2rHS3W+xYxTyrs9uGMgpyoCikk4GQ+icpx
 2StzW8UOVpN8itIdeCnd7X1XYy+VZSFIc6fbdeLSxlpPasTKJ/g+nd5iXn14E8xTvf7niAWKA
 WUYF84dH8GuwQamwwT+St3t40GR7P2tjc6/L1EEZ+b0/s5PtREoPCOcu//786dckqU3hg8Ur8
 qKxXHrHQqeOQtAIrAHRzMJr4W6gj8vDK3IQuaL0igG2pFLuvPAZ4Kh9FKKkHfUCeOg/5Oj9lw
 fYtK9oIu68MFQuTDpwQeo/vDMGkotvdn4e9chEqbAxTn599Q5+EwuSdH0YWifNJLg+OyqxHZD
 PYTJPE0FuiFDXAY5Jp0MIvbmShbWR4VqS0OFoz+9x3aoxNwmeaViLOESF9CCLYXY9wj25Pr/8
 C19U+2u+XZKfFnkSbK+vp9KQuzvMa6Bk3aSx4bs31OrJc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

You would have the screen reader jabbering over the presenter, so I'm not s=
ure that would take off. Audio description is usually slotted between dialo=
g in tv shows and movies, so I'm not sure this approach would work for the =
type of content you are talking about.

----- Original Message -----
From: Rich Morin <rdm@cfcl.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Sun, 28 Jul 2024 10:37:27 -0700
Subject: making YouTube (etc) videos more accessible?

> The discussion of scanning and converting PDFs reminded me of a topic I'v=
e thought about a number of times.  Perhaps some folks here will be interes=
ted...
>
> I watch a lot of conference presentations on YouTube (etc).   Typically, =
these have been edited into a collage, showing the speaker, a display scree=
n, and perhaps some graphics for the event.  The display screen generally s=
hows styled text, bullet points, charts and other graphic images, etc.
>
> Although a blind person can listen to the audio track, they will miss all=
 of the visual content.  So, I've wondered what the prospects might be for =
improving this situation.  For example, it seems like it should be possible=
 for software to:
>
> - pull static images from the video stream
> - recognize the region containing the display screen
> - extract text and layout information
> - convert this to HTML
> - synchronize the HTML to the audio track
>
> Or, in this age of LLMs and such, perhaps the software could analyze the =
visual content and be prepared to discuss it interactively.   Might anyone =
know of any work in this area and/or have thoughts about how such a facilit=
y "should" work?
>
> -r
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

