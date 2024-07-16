Return-Path: <blinux-list+bncBCM2V5WE3MDBBRXC3K2AMGQECONVAZY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6E0932F47
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jul 2024 19:43:37 +0200 (CEST)
Received: by mail-yb1-f199.google.com with SMTP id 3f1490d57ef6-e03a92302d1sf9914756276.1
        for <lists+blinux-list@lfdr.de>; Tue, 16 Jul 2024 10:43:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721151816; cv=pass;
        d=google.com; s=arc-20160816;
        b=xvWoRPY++Q3cUfMeXqNdsSs2TThA2W1g+EUQaqFpjmwSFvGnj+jIrx3/9bdnzvDJig
         QozAeIJVH4BL8/PRodTm4lMKkt2G/BwDmZTxg6CS5X+YnDCWBXNrFo60eT/exHmnY7Em
         CDyiPo18BVpc4BJoKnxV6HsSQ+/HQCHrXRkocAFcMObv61f1iFpww/ru5BXFtuQz57qC
         MUfwZEY9fdutxTf7Wh8evC7r+YJOSu/QSVrGwDD2IuwQXqlqpsTlcCVTrGwbslw1mJqd
         rrDa1KzffKpadZZo3p/SZKrxwgKSpBg/jPJh7UlfilhcpPHSsxS+pEcMn3feDG5NWK/h
         dYpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=A45gF4RckqQarWCNn48Ov6ElcNZHwBX/UyZpr02jMn0=;
        fh=zTyovbWJGNyDN0Dh1GNV6PEsEBIrygxJkCwmpIav1DU=;
        b=fBP7gu2ok1c5qZP/5Gs001Ot8vYEuc0KcGUYXTXWZVXONS0iTDkGk0x5uzoYZfNnjD
         7o6Yf/y9U3qKICWU4Vt1Lw9itcNr1ZjTSk+JnCCihtFXg0hx4Rkh7cMH+2JfKOz6z2jQ
         vmW/JA4Css7e5oJN2tMgWZ2Ca7peLW2hWCSQoX+ddfBuTF87dI2YormUzTpn6vqj/HQ1
         PB0KB7lqsZmNu3xQnFhJF8ZxtixqwIdnePhuEiIEASfqW/+So5F9+f2RVn50bbFUSKV+
         QBgMqjk4kWtBATqybPfUEPV5cFDWHY/flkv9iOtiwbVNir3XZ0XgH3uPqPfSGTu3pf8H
         39hQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.21 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721151816; x=1721756616;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A45gF4RckqQarWCNn48Ov6ElcNZHwBX/UyZpr02jMn0=;
        b=I/FeOJ3VS5wpxliJHkGtXV/6CeBOI/nTYw0KLVU2O3PB0bf6UbxAqqQ3z/ygb6mQMi
         4SR7BgK0dvlxSzVa7PgyERWn44AVRj0Nuu8pFTzl9bDNwzjvF+LItsN4R2STnczOesyV
         lpK3TFWHRZsOVFWOU/4FJnO7/F1ql2fMD7jADtGt4niYTJjLtmstELgt5AM1I8eUPGQp
         RmNHGyu2/XRIptIC+LXeMfL5zztcH8y1v1AHQgUZMfopXBgErn+WV/b8RgkGsUfWz2JK
         vwaCjEutJdgooJPqdDPCfs/l6SdlTezMNBbD1VQhAiUWu33ohGRwFUuKKlevQez9zBbX
         HV6Q==
X-Forwarded-Encrypted: i=2; AJvYcCWeeJZVZqWhEiBGbdZ7PtzaCUizLUaSXUlJPdvI/3VKQN91bev/L9fMNlN6+oK3g0WpJvS4pVQsscBidsUcO4uQMNZk/dhnNcyM
X-Gm-Message-State: AOJu0YwdMQdxM492MRiQsqPPDhOy64DKijFgvvgtv/nl//dhM9Rx7bsu
	PhG3ICetlsPpyzDEipP2WgDGy4XP1u6gMSyNMqD32L0dagkrIdIxZK0CUVMZqGQ=
X-Google-Smtp-Source: AGHT+IEkfRrnRDOlXtTzaKJtC4A51mUWTOin8g3+aJtcAmoBsgkGApjSBDCqencbUegvDNegXS19pQ==
X-Received: by 2002:a05:6902:1881:b0:e03:60b4:1311 with SMTP id 3f1490d57ef6-e05d565ca4bmr3861093276.9.1721151815507;
        Tue, 16 Jul 2024 10:43:35 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6902:1027:b0:e05:a000:6f3 with SMTP id
 3f1490d57ef6-e05a0000c65ls4905312276.1.-pod-prod-05-us; Tue, 16 Jul 2024
 10:43:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXn9Q3als9Grw3R+7TXYgobFgnOwmwoFDIelRpJryL2YbQmykLC654CdS6TvC9R2HeSEv0TMXO8emX4EeDxDuKT/WdWivreQ+FIWaYQ
X-Received: by 2002:a05:6902:1027:b0:e05:d738:c322 with SMTP id 3f1490d57ef6-e05d738c4e5mr3008304276.43.1721151814221;
        Tue, 16 Jul 2024 10:43:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721151814; cv=none;
        d=google.com; s=arc-20160816;
        b=dpnS/Kv9Jbv4LV51I+m3YA5SKgHlrsFz3KlXcjIpT27QgGcbHrgn/i5G36RZ7UT4Mq
         XsXzYO2u98Ut3FWfAvinDMPlXdn22PW1KWTYwA1Bd9qbki0Qbibq+w73bdMgT2HIlCmk
         w1Dwp4PXt3wg1y49eXvehIhn3Drmk9V8T79wkqJNStkAI5RyoEM1q2qPoy2pKKGrRZbo
         qiSddRItFLYOZfvYxVBGlTM0ZnWyo8jIdKisYruYlkMDaeWXgz0ighLAL0N9vEhx9Nm3
         qO5pip7gUGqTNgzjPXpk1eLcHOGvS9CErcQ7HG8mrelriVBc0SgOQ805809uF3N1rdVG
         NbJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=MgHkDby0iNRRueIYShskD5M3WvKfcTuDrZN8Q38PtCo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=bhT00WuF9ttrnaq/0Y65036Ui1z9oS9QzxGte4gO43ZUulHvMKtFkyJR4bX6/rvbzG
         HlLG7gN0hTQ7Mw5q/svj5gz1Sg6GxJbjQcJ3iM4Ya2Xr8gS2yOr96IGmVYcEa4iehsIn
         0uBzF5L7ZomncOMEpq82sVCQbm4jpzt1sOGNEbKyy/ZA2Kx59GR/7u/IQml1L4t5n30t
         FwXkdk41PMRla3pGm3nfRyR9d4VS6T3W2/AMtMoH8g5uC89bS8fFNX7MlWz4M7c9FVKi
         ya0DY6+n8So4svyKZ39Wv7zbTK+3vjJtdZryXQKzCsVqt4MrmJvVN998KMurukjFlnyP
         0bxA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.21 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b761a3eaa7si78939426d6.452.2024.07.16.10.43.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 10:43:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.21 as permitted sender) client-ip=185.70.43.21;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-618-88Es0jTFOU-PhDKtfA60EQ-1; Tue,
 16 Jul 2024 13:43:32 -0400
X-MC-Unique: 88Es0jTFOU-PhDKtfA60EQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1C097195421E
	for <blinux-list@gapps.redhat.com>; Tue, 16 Jul 2024 17:43:32 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0E3A01955F6B; Tue, 16 Jul 2024 17:43:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0B93119560B2
	for <blinux-list@redhat.com>; Tue, 16 Jul 2024 17:43:31 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7A91D1955BF9
	for <blinux-list@redhat.com>; Tue, 16 Jul 2024 17:43:31 +0000 (UTC)
Received: from mail-4321.protonmail.ch (mail-4321.protonmail.ch
 [185.70.43.21]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-650-5nLj_x7fOze54UmwNhFf1w-1; Tue, 16 Jul 2024 13:43:29 -0400
X-MC-Unique: 5nLj_x7fOze54UmwNhFf1w-1
Date: Tue, 16 Jul 2024 17:43:00 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Converting brf to text?
Message-ID: <9a466cd2-dace-414a-8c58-dfed2361f806@protonmail.com>
In-Reply-To: <20240713170431.6qz6au2a3jmurb5j@begin>
References: <9a2447b3-e761-4615-9b4e-e2f058029af0@protonmail.com> <20240713170431.6qz6au2a3jmurb5j@begin>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: b0dde7e6e575972458aa4c26aec439f52a8639e4
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.43.21 as permitted
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

Hello everyone,
thanks for the great responses! Yes, lou_translate was exactly what I=20
was looking for. I've struggled a bit at first to get the content=20
through. It turned out my file for whatever reason contained all letters=20
in uppercase, while liblouis apparently expected a lowercase input. But=20
when I discovered the problem I ran the text quickly through Python and=20
things went mostly fine.
There were some further errors, like the program having difficult times=20
interpreting the backslash, which apparently in the text stands for ou,=20
and also few words got a bit skewed, likely when some contractions which=20
where not actual contractions got expanded and the other way around. But=20
nothing that the Pluma's Find and replace functionality couldn't deal with.

Thanks again!

Best regards

Rastislav

D=C5=88a 13. 7. 2024 o 19:04 Samuel Thibault nap=C3=ADsal(a):
> Hello,
>
> 'Rastislav Kish' via blinux-list@redhat.com, le ven. 12 juil. 2024 13:07:=
25 +0000, a ecrit:
>> I think I could use liblouis for this, but it would require putting
>> together a conversion program,
> The program already exists: it's lou_translate, with the -b option to
> request backward translation.
>
> Samuel

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

