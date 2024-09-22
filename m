Return-Path: <blinux-list+bncBCM2V5WE3MDBBVMTX23QMGQE7BG6TSQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDD697DFE1
	for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 05:07:03 +0200 (CEST)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7ac8f684cdasf616617885a.3
        for <lists+blinux-list@lfdr.de>; Sat, 21 Sep 2024 20:07:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726974422; cv=pass;
        d=google.com; s=arc-20240605;
        b=k2ckJ86UcnkndyeOjvrE1xIHm4q3PRDwf9H8CUAS4qsfGnMaVHwLV2W7rhdtIEySN4
         M2MQE8t8aSUn0rGnSKJwF8vntHTo4LipR2x3XfNL3jqucUy4IhdPKxEUi85hkv6CVYk/
         rGgAACi2gXdG2qXtQwREM3hdr5wPVaWfKQPvQ0/9PW1OU8gk32Y5WpdiAPFK0sdS2YMc
         77B/hqQIA/K437TOPDxRDSW37kKAokzA/Ei47PPyA61sv97oNDpCswujET61rEUv8CF5
         Zuyae2qmiPJKgrfr1QNwTBytGa6tuo8WNPU618ZSmxNSjOfsBQKqg8sVfBow+V82qI+M
         MLQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=kvyoGbcNETpSZYU1gEfukCsq6+SHAzWr2e55njGDWk0=;
        fh=v7QrbgRwdubhcdiUNKRh/VK1z8aYOeo0Wmihi4WbSe8=;
        b=I+mWzDYGbBEka8v0omQ+NLRPc1lnn1awitCXTu0H6O4NrG0f7nvyQo41UUXs5ctG09
         EqT6fhU7fpTkbn0JunQnF5MUSM7C+Goqa+FA8NI2kC5ENEOFX/2w/y5k5I+99j/mdvx2
         C1tOkmv9voPgmjMCIexLxHIiHBI+Zn6p0on0bKy7roLxYuNdWv5A42WuMAaujgNVIFI1
         2oPPNe1/4slobWpd+5Y4n/plaB08v3XxnMGBZq8o+WFougw9Zt2bryLbO9wORee7AwlQ
         xyfM0OycKNRO9gWkJo933+tORE25JF/gfERyRVJhx8ZvjCPAf/XuJMSjMWAoiI0rlHTP
         NL1A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726974422; x=1727579222;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kvyoGbcNETpSZYU1gEfukCsq6+SHAzWr2e55njGDWk0=;
        b=ObEvYMFVhGUyfnQK4hSOUGjes1Eqt2QKF9YSA30RcXja7qKjZtDWBkxchogEolhlBV
         joQI2hlHeOvj7NKhSBtsj3bbF2aFAMs37XQbRmiraTH2or1gEohfBOpH4MkWPgR/b5EE
         FsV4CLQLv68RDsVQ9R/GMKqk+RhxC/CEoVUBJHzbRR4XeVnXxPfuFj/QJPxyvkWkk5j+
         MBzgY/dfVUyJcB0c+7uF6DKgm5CbwaYr+V00oLGbh8Gr3+hN1eeFdPLr1CjuZ78NBVd1
         qR6Fn04Rn5Eru2n2WtlET6cEc0izbOG5oWspN8LM67WKN2ox/0cSby2OCi9cgHnbirej
         VZkg==
X-Forwarded-Encrypted: i=2; AJvYcCX/KYtoo4xsj1ygJ3CWFqmi6EJFhNNqiw8GTdxwSAdkhca4JL1GgW0MbQ8bBr4SUw476N2cQA==@lfdr.de
X-Gm-Message-State: AOJu0YwRwC2YyEeh4o6E6Sue9HLtxi15ZMVBwcMKTrpKmrO39q4WaF0i
	WL6SVVfgUMQHXttVf46wRqogTsEemrYqwU+tAM7JbQq4fS1KCPfCfpYKg3iTrNs=
X-Google-Smtp-Source: AGHT+IHdlMuPMt8iuMiDj6Fis5EFqEGeirNWUClQbysMLaoUEY/hf0urywPnPmTfybjf1sfhZO+F8Q==
X-Received: by 2002:a05:620a:1a81:b0:79f:8a2:c33 with SMTP id af79cd13be357-7acb80a56e3mr1277888285a.8.1726974421474;
        Sat, 21 Sep 2024 20:07:01 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:11c8:b0:458:2aac:e50d with SMTP id
 d75a77b69052e-45b1634eb28ls37311681cf.0.-pod-prod-01-us; Sat, 21 Sep 2024
 20:07:00 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVK2m9UZxySqVtz6fQvHndgsAXNHSvi9VXt1exoN2pdsG6wWN+exKZvpVGwYz6763wH2O0p1XwVx/eXRA==@gapps.redhat.com
X-Received: by 2002:a05:620a:46a7:b0:7a9:99aa:37b6 with SMTP id af79cd13be357-7acb821130emr1087937285a.40.1726974420493;
        Sat, 21 Sep 2024 20:07:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726974420; cv=none;
        d=google.com; s=arc-20240605;
        b=Gs18RNW7O3/RX6V3R16VN81hnTOt06rF3IOj/ggqdtq8h1dCcSC2TGbAdDZr2i1YiN
         vzL5vxacervLMu9MhECgPVjSoatsjI5Chq7eosV+Ttn8KTUWJW9phDXfR9dyKhL0JPUQ
         lGknCjwT9Zpeoi6gem/PmqAh8z/8ojLu2k+ojahBMWSDuHDMA38f6TWTH8c5RAtVEtFz
         j+nnhFO7ylRXKM6oSQPJann+in0aplTTcaoVkZGsFS7kXXspuBn2zfeoDzMA6bhPCzSg
         OFCx+nrqkGyY3MvBEeCQeHb5jxv7xO/W5aG/A4JPvrZt5f2/BXD0v2SCblcSwJuKZr4H
         09jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=pU9g/cXcih5NnQiZs+Jo/6MM1AIdQConjOq6EuOs0SI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Hmw3orX/yH7/U/msFasaf2NRLD+vvNGC/pqjQxwPLPevfa/l4SgAxoSqt3Z+v38Wbd
         1VzrQ2qUy6bjUZ9wFBm0LRpVihBB4a1WpwzDnjVKm35i/X9HoixAeoFr0ud6BgD9hU4L
         IiQk44mAIL5jHrc8XPQCkdfF/n2MJD7v3eUav0hmtZzpMRDjsyGYdFJ/jYEWkobDvO9W
         fyu/lNwZ1fFF6uDwNmph310fhoKRmyJbyKwobe+783LuZJ2p6rQnlkZgWiPx1h7bjmYX
         DWZNZNe4NT67xPxcioKCQay5SkI9tQ2/5my3IMkz9XFqLHovD39pCrnvib6bmaM5UUkM
         K3xQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7acb07f7db6si806621185a.108.2024.09.21.20.07.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Sep 2024 20:07:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) client-ip=185.70.41.104;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-578-c5IaTI1EOUyJu7jfNmakvw-1; Sat,
 21 Sep 2024 23:06:59 -0400
X-MC-Unique: c5IaTI1EOUyJu7jfNmakvw-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4509B19792F8
	for <blinux-list@gapps.redhat.com>; Sun, 22 Sep 2024 03:06:58 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 41B9B1956048; Sun, 22 Sep 2024 03:06:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3F50319560A3
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 03:06:57 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E6B471936BBF
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 03:06:55 +0000 (UTC)
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-418-hGBigir1MUKFcmMHf6lLzQ-1; Sat, 21 Sep 2024 23:06:50 -0400
X-MC-Unique: hGBigir1MUKFcmMHf6lLzQ-1
Date: Sun, 22 Sep 2024 03:06:38 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: COSMIC Desktop System76 Accessibility Survey
Message-ID: <3ecd4b0f-644d-4485-8b4f-4c7ea9aa0418@protonmail.com>
In-Reply-To: <a143e0ae-12e9-4b02-9844-7dc38b5727d8@yahoo.com.br>
References: <a143e0ae-12e9-4b02-9844-7dc38b5727d8.ref@yahoo.com.br> <a143e0ae-12e9-4b02-9844-7dc38b5727d8@yahoo.com.br>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: 04ad3a89cf89fa5a09823e2ecd7a196e1d2f958f
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted
 sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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

Hello,
Cosmic is an environment I'm actively keeping my eye on, since it seems=20
to bear some truly interesting potential and I'm always happy to see=20
accessibility is worked on in the design.
I've noticed there is the alpha release. But is it actually prepared to=20
run with screenreaders? I.E. Orca present on the installation media,=20
shortcut for its activation working, etc? I thought this was a=20
super-early preview version to see whether the DE is going to run for=20
anyone else than the Cosmic team, and things like a11y are going to be=20
investigated when the whole experience gets somewhat stable.
So, can we run this right now? The fact they have a survey suggests so.=20
Has anyone tried? I should setup a VM and check...

Best regards

Rastislav

D=C5=88a 21. 9. 2024 o 4:46 'T=C3=A2nio' via blinux-list@redhat.com nap=C3=
=ADsal(a):
> Hello!
> As some of you may already know, System76 is working on their new Linux
> graphical interface, the COSMIC desktop. They have created a form with
> some questions related to accessibility. If anyone is interested in
> participating in the survey, please access the address below:
>
> https://docs.google.com/forms/d/e/1FAIpQLSfQcq6638l0yNIQf6GFalMqwTVGFiZqY=
saLt7TFGSCtktVDdg/viewform
>
> Best regards.
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

