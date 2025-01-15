Return-Path: <blinux-list+bncBCD3RKH4ZIBBBOW6T66AMGQEHA5VZ4Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D85A129C1
	for <lists+blinux-list@lfdr.de>; Wed, 15 Jan 2025 18:24:12 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4679db55860sf196101cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 15 Jan 2025 09:24:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736961851; cv=pass;
        d=google.com; s=arc-20240605;
        b=PCIW/6nLjNp3X5JfG22uoDynkWfleX+8nhGzGHRrSMkz5rqaUi1wMwjVYglp9B8sSJ
         kbOtiESFlZ6sO3VWV33lMqlnSlsVbQTuTAj65yH+zgVYl03cFyD+SAre/CS832z4m1pG
         +LJkd9VNHqWpxRd7SxZ2gdJmVNx6doZX+Pl3Y2DxeYj6oRngyS6Hl9AymG7X4oImAxbi
         M1+O8FxjBpDcHyxAsN0VeTCD21NQVbceDv3s2GnIB7AB/sBDnvxTmQU6R7+cynIyK/oS
         0FNuFxfY4BQAHvOuwXzyYok+ssrX4xfZNuNw8gKzxE2HMB8VMYIB9G6BcE0sN8Oi7mTw
         AA4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=S5sEOS456lMAZP/qntBoxzCcnt/FIw95RNkzUIoqoW0=;
        fh=BXZt94abStDfyeUZM58rIiU+FCk61lkSyCLsRPrxC3o=;
        b=XG0DQFNGoIfiFuabY772eRFDM+d6DgSw+/n8/ewW17k7ruC45ZbRyglcT3/7FwsSVo
         r4sbp1RZkLTIdNGiNjWBh7GmQXJdQHKhJ35IOyHRr6Ur7uuUd6lUrJdpnGYao82MGz5f
         vfHexGMxxI3xUv3BM308ZPpvUezxfbZDMRwoON0ObvQyY51yVaqtkVJi0+2OiieGDRUl
         SCvigzLzKyi6Jkag2efECgGs/mXkZ25nAGHVFO6M6MGZx4BgME5OOaU0MbaxRi7Zhcz6
         y7wLzlZOSoL0y1k0NIrOIF8fzOPOa89IZb4w26B9AHIefnYNKR4KbMvP6Dlg7lmLhRgA
         mZOQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.48 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736961851; x=1737566651;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S5sEOS456lMAZP/qntBoxzCcnt/FIw95RNkzUIoqoW0=;
        b=d+0qrkWCw8FPwCWks83fCGJeDKgGK+gdwInUqfqqDqqYFvLWQgYDAFcUi+QERjpuIE
         JPR0x9Cf90IibXZs6JQ90QzH7HcFiUXk32StjqGfDsjnHOZc4XMSiGO5pRi6+XtMp8lC
         iHN+XbWUTsfLK7xrw1+FMYex+xLXqg4N0LXqxwPIJbLq2eXTdE3p17ITLOONksq7CAW6
         dUMi4/L9cX3egDjDsmweRW1Xx9hT17Kly44SjCYqJK73WeiX6yWDwWFh2T991uq+6CZC
         rs8z2GdFewqpMtsLcgEmupiA3x1AfCwUlOU/KhhSDKuA7YRgH6NG2YZBhJP2WncbCvd6
         JRhA==
X-Forwarded-Encrypted: i=2; AJvYcCU4zqbn6ojAyGjFsTmKm7wjsiElPr7YNXcC5HbHSLOKA6Vq5sy/QH8g4BGSVZXbVtobclN1LQ==@lfdr.de
X-Gm-Message-State: AOJu0YwMdDlMP7Or49fSbkVfUTGdJwowVoL8ujGjhmMmSZ4wJb9YdWw7
	wjEbAAY3S3sQKZx25KB/RRr5WuSb2x9V2W/dj6phCqJhmcasxh0+HCITPk3dMRM=
X-Google-Smtp-Source: AGHT+IGZImLWwvym5uf1FrWDNo2euS9k9YuR2gCo7rLD3x4O6N0re8EV6QdInBZ5w8mvQj8MXRp2Ww==
X-Received: by 2002:ac8:5ad3:0:b0:45d:82a0:5028 with SMTP id d75a77b69052e-46c70fd1ecdmr46793831cf.1.1736961850844;
        Wed, 15 Jan 2025 09:24:10 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5842:0:b0:466:8f66:abeb with SMTP id d75a77b69052e-46e02e0d266ls1787551cf.1.-pod-prod-09-us;
 Wed, 15 Jan 2025 09:24:10 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUQMQGU+LRosmOHYloH4XnaFt+yz/S1iT18TV8f2QPMFAC7M4JXsaMZM9uWzfgbzie0zne/mgrO/CsoUg==@gapps.redhat.com
X-Received: by 2002:a05:622a:608f:b0:46c:72bf:622a with SMTP id d75a77b69052e-46c72bf6399mr494393791cf.36.1736961849805;
        Wed, 15 Jan 2025 09:24:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736961849; cv=none;
        d=google.com; s=arc-20240605;
        b=DkcL4y6EOjCr/U6G8FcXuWzxAyRgTTqhYW1nkS+XTdopxYpTIXcxD2WVso9w1fmp6j
         efSJ5lxIlwUVCIv3Z7lcMp9PU4wGXieYoms6dL/OTmUt/OQDdhJkc2OSSfAnZX+Y6zTm
         P+JA+JVGBXei/79068XrJfdJNC91yMoku+plEweXbwp6RzJJNIr+vA+5VxzsJhyF4Bq9
         lzf4WXnojGlPPN5ImG8dW0ier/+obS5XtWDpIim6dfn+l21VBkWzbf2eumuBvamSNHDX
         IjcZxROZBg4xVEDF+3rYvmK3FmgYIfzK04ZTj1tXJt0N6ht1BKIWse4Ns+9Ea94WfCeF
         Qn5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=gkkgaNa4s8ivqYYuYP43Bz+DROm9FNukA6AoAgZH++4=;
        fh=tBUg+Sp4ZT+GFfptu3d7lvKfN58tvI/e+OZyTq6I4sI=;
        b=AeDlkUwuqS4cHdJY1hwG5eiC41e1OfI/IoSYLJlSgOzqZJcJxZFK0j30NB9mx4OeC/
         qZqDyrkVVAn92Kf8v3KY+i+iAhBAWEGmiIPQspT6cFlDJassCQJH6dw4R9O2YO6lA0rg
         NWSkZK52H8tEV1U5ooGAjdU+elnHSrLZkPNvCsYwB5eaBHrIWnkJWYyITeRHw1x8QJ/Y
         +o2GFiYNuFL/f4vdBUutVi38ITOti+jhXzGPR5BSKA0K7yI7F/1bKwUjeYHjFNpIhpYz
         whX6R4wfk+aHLH98+EWHn3bWIdC0ROsAiAOZFAGD3CD3Qf1R8damzKNlRPmOwdTlh7Up
         uH8A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.48 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46c87350b94si158586781cf.199.2025.01.15.09.24.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 09:24:09 -0800 (PST)
Received-SPF: pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.48 as permitted sender) client-ip=209.85.218.48;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-65-srZq6t7iO0K-_uTidHSyOA-1; Wed,
 15 Jan 2025 12:24:08 -0500
X-MC-Unique: srZq6t7iO0K-_uTidHSyOA-1
X-Mimecast-MFC-AGG-ID: srZq6t7iO0K-_uTidHSyOA
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9E6C119560B7
	for <blinux-list@gapps.redhat.com>; Wed, 15 Jan 2025 17:24:07 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9A6AA19560AB; Wed, 15 Jan 2025 17:24:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 97E3B19560A3
	for <blinux-list@redhat.com>; Wed, 15 Jan 2025 17:24:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 324DC19560B7
	for <blinux-list@redhat.com>; Wed, 15 Jan 2025 17:24:07 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-648-Fu3eFbJ9M4Wf0vl08S8VLQ-1; Wed, 15 Jan 2025 12:24:04 -0500
X-MC-Unique: Fu3eFbJ9M4Wf0vl08S8VLQ-1
X-Mimecast-MFC-AGG-ID: Fu3eFbJ9M4Wf0vl08S8VLQ
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-aaec61d0f65so5578866b.1
        for <blinux-list@redhat.com>; Wed, 15 Jan 2025 09:24:04 -0800 (PST)
X-Gm-Gg: ASbGncv4K5mINwfvD0zd2cGWJAXoKRu4zihDQ8txACsttUGcqXSDvVCnw/dDCKw6bO7
	nqrQkEIsmu27IIByQsCYql+a1rlZT018yZPI+SGJ5tZfR4bufKZ6NU2UGbiZIBbzzFxf3oD4=
X-Received: by 2002:a17:907:7ea2:b0:aa6:becf:b26a with SMTP id
 a640c23a62f3a-ab2ab66d9a0mr2596540266b.9.1736961843170; Wed, 15 Jan 2025
 09:24:03 -0800 (PST)
MIME-Version: 1.0
References: <E1tXPM7-000KS7-0c@wb5agz> <45995941-6847-4694-b01e-d67ee7418667@gmx.it>
 <E1tXuBT-0001H0-2A@wb5agz> <20250115080337.fjk25kiajtxwfbpr@sprite>
In-Reply-To: <20250115080337.fjk25kiajtxwfbpr@sprite>
From: Jeffery Mewtamer <mewtamer@gmail.com>
Date: Wed, 15 Jan 2025 17:25:03 +0000
X-Gm-Features: AbW1kvZof70A_AlBQu-7fAGNXp1HgCxJduOdMSTc6FwThVbLKkqcHYv1ogbH8dc
Message-ID: <CAO2sX30NOJL6Qt39R99h4G=pKpw7Wc+tbh7OJW4X0X8iMNWsXg@mail.gmail.com>
Subject: Re: speech-dispatcher Before I Do Something Stupid
To: Joel Roth <joelz@pobox.com>
Cc: blinux-list@redhat.com
X-Mimecast-MFC-PROC-ID: ECRZ8dYfwmi_INlQGJXCYUWEyT7q0_IXYPcV96tSoE4_1736961843
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Gy7Lrn0JEQb16x-NLH1T2BhvK5ibPBBa8EXERYSTllY_1736961847
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000a69514062bc1f1fe"
X-Original-Sender: mewtamer@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mewtamer@gmail.com designates 209.85.218.48 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
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

--000000000000a69514062bc1f1fe
Content-Type: text/plain; charset="UTF-8"

Hey Joel, any tips on how to successfully ditch pulse? That it comes as
part of a clean install with how I setup Debian itches against my
minimalist tendencies, but as much as I want to tell Aptitude to purge the
pulseaudio metapackage, I'm afraid I'll end up with a mute system before
Aptitude even finishes executing changes with no idea how to restore sound
short of reinstalling Linux.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--000000000000a69514062bc1f1fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Joel, any tips on how to successfully ditch pulse? Tha=
t it comes as part of a clean install with how I setup Debian itches agains=
t my minimalist tendencies, but as much as I want to tell Aptitude to purge=
 the pulseaudio metapackage, I&#39;m afraid I&#39;ll end up with a mute sys=
tem before Aptitude even finishes executing changes with no idea how to res=
tore sound short of reinstalling Linux.<br></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000a69514062bc1f1fe--

