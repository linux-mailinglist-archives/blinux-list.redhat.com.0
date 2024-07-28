Return-Path: <blinux-list+bncBDLMFUWM64DRBFPSS22QMGQEC3YI4GA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E7893E37F
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 05:20:55 +0200 (CEST)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7a1d44099a3sf267452585a.3
        for <lists+blinux-list@lfdr.de>; Sat, 27 Jul 2024 20:20:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722136854; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q6VFQOQJ6tCaRZ9FyyjNspz0QKqWHDmZ89HO/yh95R4JmDRB75PnGuKX88RLUYCCzy
         oQXDAHsAi8XQMrSyyEGhZ9onwuYzpqZs8rvGm0RVm8EOB2XAbnMajAxj8GK3afT2MJMM
         WW3cAwaIO5T8PV3EUxedzumWSSR3CxccrSy9r8LNkr3d6crkPt0RdGpiUPwMh05/uLH1
         /AxdpnqX5UY0vE//OXottqrQGVH9oCq8EdqfzA6ZKo274IHZRVw0aPIApveoMr76QaHZ
         HrzOEn6vu7ctLEaUeQz6URElG9DIgx9bvGH1TJODMaFzNeRss2+PXXndB3PQH9rUi1S+
         53cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :subject:from:to:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=wBRTyKK8Fubi2q2z8EyKk+guu9CAZIjJM6+PooegL9Y=;
        fh=0hW3uJy2T5p07p4U0/36UT+QziHK7lKjtrwg/usb6Oc=;
        b=EOf8X3y4Xzl39XjbVpxv6t2EC+HPWdHpa8OARnwz/tRaTOuKvTUQMnqcIzX7a8b/Sl
         h1b41DTvpkAym21Z35qDPLLsO0sxYZJTYyz9CfJ5UcR/CCD/FCevBSkc3HecpD7Z+Rh/
         c8uvCsfFjjuvGoSSe0EZYKSZu/hp+AKauWOLfmdUyihI7xZ0tp4/L8ZpvOQsRU46MSlm
         1wPQKApzYHoKJft+PMy07Hd+lEg694QZIGsj5hdPz+ijRZ55n+0N3zgwtgRojg3BBtte
         u6Tw0LjoKsw8tUr+Ccrf/nbQNmkM1P6V/kkY5RLL9uyBF9tMw/yE7mIqvW6FFq8+2GYD
         oVxg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rmann0581@gmail.com designates 209.85.128.173 as permitted sender) smtp.mailfrom=rmann0581@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722136854; x=1722741654;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wBRTyKK8Fubi2q2z8EyKk+guu9CAZIjJM6+PooegL9Y=;
        b=kxoaZ5e/v8oMiWjD9jS7SijraAXlpINIWmd61f58cfBRlBhg9P4pHR2/JSdWCTa/62
         FjDDExXKN0gmSXuGWXxU0zFshckflPYFHOw7lFSlM/JTu+DF3dVixNWzUNttJB3Jv9ge
         lh+US5e8CKw4rKl3mzhj0wDFWSyNcoHx7aOnX7HGsOimiLrlNhgjj/XvXxb8DhL94A3w
         tNZr56NwRYzOva1RPpZiImUfFy76ZZbYZjeusyCHZBseiTmqKJpDQeBrPoop2AbRlASe
         88iI2z57PUuvFYWxQgsPjXNHTPkLjXX8/OkoLKnYB05mdP+b7vWHDw6CRS39yOV+o2bh
         i27A==
X-Forwarded-Encrypted: i=2; AJvYcCUJaX+A9ota/VQgvlVrcLOgvbzn9bHrj8xq0bMqXt1vqOomUzBo0mCBZ2MLlzfr5+DWMWaB+xc2IOzFsMpWWZCrVMcQlOIAYQWa
X-Gm-Message-State: AOJu0YymQec0nQxgiXnvEH9chd7lYxx1D8S8Ht2/pDLYE4v3UW94RgmQ
	i6BzxuvVzZ7p9bjXcNYhvjIJiaxNLI249vUy6OmjRYPTYSiDXZkMZ+D3fGACAW8=
X-Google-Smtp-Source: AGHT+IEUnCTIVZ0D1RmtZxAkc1QBg7mnDaOpG4fIcWHDC/9u2y+3fOAo/MniCM8BIPVsN2of52P43Q==
X-Received: by 2002:a05:620a:29d2:b0:7a1:e3e5:c8c with SMTP id af79cd13be357-7a1e522a6eemr471038885a.5.1722136853875;
        Sat, 27 Jul 2024 20:20:53 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a13:b0:447:f206:4e7c with SMTP id
 d75a77b69052e-44fe31f5ab1ls58248271cf.2.-pod-prod-07-us; Sat, 27 Jul 2024
 20:20:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUWYorecB7FHzZ6Lz4DNn7dInodZCsrIRZz+D9dZFyQJtT9GnI6iU1sj03vL18C1idh3juEa0PYIAzYzjprqZoF5N7RTc+QQiTIttVI
X-Received: by 2002:a05:620a:269a:b0:79e:eb2a:662e with SMTP id af79cd13be357-7a1e522a616mr552973985a.6.1722136852962;
        Sat, 27 Jul 2024 20:20:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722136852; cv=none;
        d=google.com; s=arc-20160816;
        b=AutKlVMA/MiURMMKV6TSnX9Dm/7NxZUxXKaLfZy+culaNtMkeIzJ05+34jSBZKW8VU
         OktnGATkciVijtdoSuL2i2+Q6NtCmYJbm6Zjw22u28zqmeZ9kQL11lZzPO/+5BqWP5mH
         PyPfIbzena2Y1BoUcb3jZlpgniarNXRzFGCXYmN8eAyRUXdvaATlvRRQV96WbvVw2mBh
         YcsVqmoC71gcoYGG7cJLn2xYpzhINltDbL9Vz+p/Px//rMU83DJfdZ7RbSmQ7B3sjTOs
         pSjeG7hqn9C6fw9jajPlSUQ+s7WZ57X+VVPHe7rcGOpBFalcpqMfCus6vZVzNoam6et1
         HAlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=bDYELQBv4DPxd+uk3wHotgVSjzAH1DamZMJLqZhauCs=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Lu60nCJxSQEEy72LQDYq2qZSBgtKTbCx0KDfC32+PdwQZzMwTIVtD6vCT5ku24SyPY
         sD+65yzVx5G8qs0gWpjgVc1Vqh5MzugWW2wHu1AvxVcBmRnmKKrRMDeIM81+z+BgGH8q
         1MTGW8L0c5u3GITsH0u/Lt0FUg0wOaIDn3UCoBeI4sMwWbnN/B0TgSQPzUPR3/okQSOt
         ZeT6ErQrPQ0iWXtUzh96wreaQ6VE+7Mn3thnTzx2eyqQaU/dWELLwuLhyxsrRjcPrREA
         lEj9AfOx9CoMSObcldl15AXzSnMd8sWum11g5Sr71ViEgLznffLwgs784GVZbXVRBqOM
         Bpjg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rmann0581@gmail.com designates 209.85.128.173 as permitted sender) smtp.mailfrom=rmann0581@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a1d739b743si767874385a.141.2024.07.27.20.20.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 20:20:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of rmann0581@gmail.com designates 209.85.128.173 as permitted sender) client-ip=209.85.128.173;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-592-Avj0ARDdM9yRJZwQKrjWPg-1; Sat,
 27 Jul 2024 23:20:51 -0400
X-MC-Unique: Avj0ARDdM9yRJZwQKrjWPg-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 85C6D1956088
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 03:20:50 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 776D01955D42; Sun, 28 Jul 2024 03:20:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 74E9F195605F
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 03:20:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CD64919560AA
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 03:20:49 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com
 [209.85.128.173]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-1-z8x2ZK7wO_WCCxCizvTxSA-1; Sat, 27 Jul 2024 23:20:45 -0400
X-MC-Unique: z8x2ZK7wO_WCCxCizvTxSA-1
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-66ca5e8cc51so10283627b3.1
        for <blinux-list@redhat.com>; Sat, 27 Jul 2024 20:20:45 -0700 (PDT)
X-Received: by 2002:a05:690c:7201:b0:664:a26e:5ab2 with SMTP id 00721157ae682-67a06728776mr50354557b3.11.1722136844773;
        Sat, 27 Jul 2024 20:20:44 -0700 (PDT)
Received: from [192.168.4.202] ([38.40.68.7])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-67566dd9275sm15040967b3.12.2024.07.27.20.20.44
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Jul 2024 20:20:44 -0700 (PDT)
Message-ID: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
Date: Sat, 27 Jul 2024 23:20:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: Ryan Mann <rmann0581@gmail.com>
Subject: scan and read under Linux
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rmann0581@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rmann0581@gmail.com designates 209.85.128.173 as permitted sender) smtp.mailfrom=rmann0581@gmail.com
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

Hello.=C2=A0 I have the Fedora Mate spin installed on a computer. I have a=
=20
USB Cannon scanner connected to the computer and I was able to scan a=20
document using Document Scanner.=C2=A0 I was able to save the document as a=
=20
PDF file.=C2=A0 How can somebody who is blind read a PDF using Orca? When I=
=20
enter on the document, it opens up in Document Viewer, but I can't read=20
the document using Orca.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

