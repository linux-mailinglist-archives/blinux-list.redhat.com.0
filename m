Return-Path: <blinux-list+bncBCLPHQH4XEIRBOWGU2ZQMGQEBPDF4II@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1539053D4
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jun 2024 15:31:40 +0200 (CEST)
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-62a0eb1c809sf127455877b3.2
        for <lists+blinux-list@lfdr.de>; Wed, 12 Jun 2024 06:31:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718199099; cv=pass;
        d=google.com; s=arc-20160816;
        b=HZkiXXMm5cNKKrOY1s7xaxHaOVP1it/B3sUy2sroAh2X6RWf/JG58dsl4C8OhdN+1m
         MAq76fowp/XNDoyYki6GC2HGs74hXypzA6J7QxX/GXQ2THXr7QQiIqJ256pv2HzsVg4i
         j4NYT2rerPqRfmR7AXP/r/Nv8a0cQ8iwE7UQeRSJt1yN9hbd3yqLpNyT2T5auQtst4z4
         da8ENhTN8aCG9aexmiEwDkHYzRmSQZ8fvtlqUCZO1rdfKoxd81qrqe8CjWKSSuUoS1UV
         eLGpec6laBo/jjq0NSh6ITL3uzzQuOFKF924oj9FuWchqjvNS+kPCajOrVacRiYiN9Ss
         oWrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=d2+L2iCtmKxXgx3VVoLOBtzPTKQ1DJpApofImzxtWIA=;
        fh=49Dpx/aAptmMNAuTEePix0WpdMkIeBhMeAfmsjWO/GM=;
        b=CgSGAu7MF46Du9iP7oFyVi9F5nVFnB5GdouBUyaZbqZdqcYRMHZ5jJ7E5rdth4u8dy
         eJpD9Bk9lj7Xu8aYs9MPa/9Wco7/uep55ODbiNlKSfDKgJlyWJIrIUBI0AAL2qWF/ZM0
         Coe3Bjo4Vc+GXhSV8CvCwU33eoJ+byX8m3Nog/WkqSNFcZ6pOFEjUqDaEJw18497DRz2
         erzvewFiM7M/T94/XiccFUxE4ZftfcmfiTmK/joeVR8hUJslRZyGL2OfcWC5Z/xMhPEn
         6m0fTBDn7pYKicCWixA7StbLX3/4FtZecMZd5t+0UWzlUcUdBxqAhDw0SIUq1S9iH+zP
         en5A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718199099; x=1718803899;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d2+L2iCtmKxXgx3VVoLOBtzPTKQ1DJpApofImzxtWIA=;
        b=nle683DXk2nvDGSk1SxZwbNzcywiFV7GVrFxr2YmHBwW3/Qt9nhf777ucNFzwOkkX6
         e2EGglskog0hApamBGaZvZtQ/JmTQsXtphMu6ra6zFIHSLrqBbsYRZwlBmIKimUOqUuO
         UMBQDZKda1UVgwkyAH179VKKn21gnNZx9EBGbYKyj1brPorPq+ciBiB52ZAf1vq2Hea+
         S6v/PdPEF0kWBRrCSP/eWFxtU85Bx4+OCun+9DMh74+F4UxAvwKx3lPEACy1668IgOnq
         bcjWcfovwL2MvEvI2hf73hqHo6HkKmjP5bfkfdFr6Gf5mPpiJMa3ulKahrJTPnOOuwHi
         IdcQ==
X-Forwarded-Encrypted: i=2; AJvYcCUaua+V8v5D2/OKy/DdmVDx31GCHDhFqUCUAFyNYZDRc9fQAJ/rwVyKf21YXgnisPGgpGhojb7er6HZmyJ3C4jsc7Qm6web8JeI
X-Gm-Message-State: AOJu0Yw9lujUkcR1yR9LqejDDlb6YvsOl9b7yRem7eNXtTa9SODv3+C0
	DiBvLC25doVt4Y6T+4Vx9pETlPqIvkV7SQZZxkDjjPUVEtuDzYqJPesLshH+81k=
X-Google-Smtp-Source: AGHT+IHR0fBfCFiM1NhrGQqMVhXbsT3GdLy3zMH0mDI8f07Fo/BB0DHDb9DWKKGKzxi+fiBqbsQK1g==
X-Received: by 2002:a05:6902:50c:b0:df7:7399:f98f with SMTP id 3f1490d57ef6-dfe6715d7c4mr1699541276.29.1718199098803;
        Wed, 12 Jun 2024 06:31:38 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:fc09:0:b0:dfa:77ba:dc1f with SMTP id 3f1490d57ef6-dfaf162a805ls8050773276.2.-pod-prod-06-us;
 Wed, 12 Jun 2024 06:31:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWcZyqBDjIBIzItVBIsa7UjTlwR9M+8Ybd9/l0mlVOKFqoOeDE95qu/93pdoOafpJ/KX6KkxtRupYHG0lu9Nb5Cy1Q7XESRdT3Kdw2U
X-Received: by 2002:a25:7406:0:b0:dfb:308f:911 with SMTP id 3f1490d57ef6-dfe691fd32fmr1528787276.60.1718199097729;
        Wed, 12 Jun 2024 06:31:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718199097; cv=none;
        d=google.com; s=arc-20160816;
        b=rdYIKJdD398nPBfoPT0vH44T7KRKUu4na9UIHiOPXC5HxKwTfQ80MWdkXaw7gW2Eeh
         QwegFHrlbiQhiHuHZFIFxxnxU7npMntbxQiqPIw5MI+8BJETmpRKpSqrn7yJ31NRyQKV
         WltyXfe2Kq7vILXsXfitL/6OfF/22jfXM6Lu3dX9eH0Dty+dLALUn6iPe3/IEGOL9AQq
         DekD7c5bI9IEOxm4nqO2xHuGdSSTLzFciaLMORqyV2pLW5J5yqMFi4v6jTZp28rVRCnn
         yMbyE7GBAC+WkWfH6XXuUlDxljRqVnH9obEm4+4CG7DZ03QzYJMN+9+L9mQJg1e1EpBf
         Ksyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=Eln33tZmlhWZU3JRRtey3LvCP5r+W9j2AOC3l2KCxOo=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=PVf1419CqnfdhK93AxXpoKGLjgmxMVM3VrFAjY3bE5bQFZm8DRirNeaU22rEHhyoBm
         +/ax67EjAZPhO233atAvHcuWLVF5U49GiolJ1ecZ52CjzWV79YT+eHoPL+t2JYy297py
         Eizy43OD+xepOZ5fbmB2HN5tD+p6aehsYYdG5OKM7BdoIoBX8RB5iuu4VCA5z+WojQkn
         RLU/ftaWru9yN8Suo8Vc0RYFJ/AN380iDNxz/2/bhFLp00ccJnS4x/dFebublNqZxNk2
         G+D1RkyNE7anvJE7mMjbqSuIOGpon9wfrqqblIGCapJYiX5LI3F85yyaI8eKMwE2D8gY
         46pA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-44038b170b6si163703251cf.389.2024.06.12.06.31.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 06:31:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-349-pWCYABRxNfWccpF_WwBD1A-1; Wed,
 12 Jun 2024 09:31:34 -0400
X-MC-Unique: pWCYABRxNfWccpF_WwBD1A-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2EB4D1955BE6
	for <blinux-list@gapps.redhat.com>; Wed, 12 Jun 2024 13:31:34 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1F8EB19560AE; Wed, 12 Jun 2024 13:31:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1CF8219560AD
	for <blinux-list@redhat.com>; Wed, 12 Jun 2024 13:31:33 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8EFD11955D92
	for <blinux-list@redhat.com>; Wed, 12 Jun 2024 13:31:33 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-620-k7ZUS8a6O9Oa5bbhpF6GrQ-1; Wed,
 12 Jun 2024 09:31:30 -0400
X-MC-Unique: k7ZUS8a6O9Oa5bbhpF6GrQ-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 411AE32156
	for <blinux-list@redhat.com>; Wed, 12 Jun 2024 13:31:29 +0000 (UTC)
Message-ID: <174b9aa4-bac2-46c1-ad80-07a7164b0a04@jasonjgw.net>
Date: Wed, 12 Jun 2024 09:31:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Beep in Fedora
To: blinux-list@redhat.com
References: <91ed4ab0-0c90-4188-99d2-7445be7422b5@seznam.cz>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <91ed4ab0-0c90-4188-99d2-7445be7422b5@seznam.cz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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


On 12/6/24 09:20, Vojtech =C5=A1miro wrote:
> is some way to add beep before startup to Fedora 40? Please, how can I=20
> do that?
If you're using Grub as the boot loader, editi /etc/default/grub and=20
specify the GRUB_INIT_TUNES option as documented here:

https://gist.github.com/yunga/8df042eb4eb5970ba86ba4ba3ed535d9


To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

