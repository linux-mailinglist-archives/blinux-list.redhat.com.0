Return-Path: <blinux-list+bncBCMKFVG4RQEBBBMKYG3QMGQEMC462FA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C4F97E277
	for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 18:25:43 +0200 (CEST)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7a66b52c944sf808202485a.1
        for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 09:25:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727022342; cv=pass;
        d=google.com; s=arc-20240605;
        b=QS1R6dGnWmHFetfZzRe/aw8GxHYuu22JxKXHZ7nMoeAOB7mgz/Uf870pNVHDHYS5kr
         NH2U2IHO1TMkqIO/7Xu9ElpC+Izoo2MOqKG2JQ0ZHzYkCMDapp38Ql3/0Cal33MYdtts
         1F5fnuleLPGPYk3jVOgG1WiAiM52r1qewCgX4N6VYGzPoH21vG9dhxRg6FwAwvO9LVJG
         VoUpz0XHcjy2M8/mLTmdH74u9UeDskS5jMUVhPWxNThB1+4uyB1Pt8d/9DfIGw+KOJpC
         c8NnJFhCyr3CKsAdmt2+wngmctTdu0Da6ILis+t/ZRSm2KMXVya+H28MZwzesbtGwKfL
         iWig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:autocrypt:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=qCnG5RDYyiHLAjFird819Rgbt4Nrqzh9tSF2J27uQzE=;
        fh=tg7eGCWh/d7vAUgwt/MN9ZmAboE8uELcG7iJ/jwJxHU=;
        b=Pda5LwhyWpPk3uhG/1cR5bEhs/ncxX22ZVvKW2fVjOWO/xNM4T0Nzky2PlweCBoQMb
         rszFaPJembOGsXF8wDMK8bc6Tov6kTKFHek7mQ02BiMeRia2D6IF4ebkmDyQ7vcDD8Xh
         ilKFskhziANrlmnsoCGkP4dEbGVH3a0VFtjwILnxutV3KDsmBKgZIaK+WjygU1VLxWGM
         2/MhECnZxM7rRref0N5gF+jUqGCaVtRwwLKNMs0YIPdky1E/7+ZtG7USQqwEk+U/LEQM
         HlpQsowVKNJQAqRxBG3lNb8f48q//lxpcWBbcUYz7W1tmPP8UuYXnHcQcz4mP5Jq3yIk
         lxIw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727022342; x=1727627142;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qCnG5RDYyiHLAjFird819Rgbt4Nrqzh9tSF2J27uQzE=;
        b=BAdTxejEyFymBoGvKDjCD95OpkchX+k7jq+Yr1STzGQ+q2blOBLKBH30H9HGAPu9ag
         Jq5dgBVsQZxSOmA9OGbfB2XFqnhOjaa9hvNUy2+kmV9fhWnUhFlwnoHNfagOk/vhFo4i
         0lsVb52FSTsktTUgpe43V6Z3uGu+Rb/MgaajKovYq/0+Y+/bzYnzgcf+yytgtogYl+Td
         +1hMxoR5akQK8ti5w/0TVsdCgrRNkEsDfSAlGOq0nVgmKX1HW3W82W+b/hWg4xue0s7d
         2lsuWexxQ4J2y31zuMXfjxLKb/XBDwSE1Icl+Z3PWLe0vSgkoBRpXmbW83fsaVq6Njbr
         jm2g==
X-Forwarded-Encrypted: i=2; AJvYcCUn8L1MhdscqnpLQnkxliSl/CmpZgkp7Zn54JBcrH6RuZRfWKBL/hibdqS44fXxdIRMQRwP6w==@lfdr.de
X-Gm-Message-State: AOJu0Yw7Z+dTrzazh35bmHo0NN56IaNtOjttMWhEPcTRdAh7aSzP4Bwc
	fe4qKQ1oTwp6hA7IftPd6+bcxuR9k+9+2d26QVcIi/6Itcm2aOPQRd9qGm17/VA=
X-Google-Smtp-Source: AGHT+IG7/zKXNgPHdEu2wlMbQEdXRHvA4X4YQxOHzE280ybe1AOUM4PPaJL2h6iVIgldETVIP8Mwsg==
X-Received: by 2002:a05:620a:371c:b0:7a9:bcc7:4ff3 with SMTP id af79cd13be357-7acb8defc0dmr1707407285a.42.1727022341960;
        Sun, 22 Sep 2024 09:25:41 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:203:b0:447:f206:4e7c with SMTP id
 d75a77b69052e-45b166bd685ls52110811cf.2.-pod-prod-07-us; Sun, 22 Sep 2024
 09:25:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXsAfxNWsoTLlXgxpAcEDkZ0+xbcED6qvOSKPElxySlueCaJKrzWTDokeqZbMM644+zjqpTGSMrBFYMhg==@gapps.redhat.com
X-Received: by 2002:a05:622a:5b92:b0:458:3a34:b7b5 with SMTP id d75a77b69052e-45b22713c66mr132774741cf.26.1727022340764;
        Sun, 22 Sep 2024 09:25:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727022340; cv=none;
        d=google.com; s=arc-20240605;
        b=UX8dC1tgpccLQjrl71bsqJKiGbr1LNvXWC/9lTzmgFC/LiuE863Y6mBDZGbNDb68BJ
         oV8+L3xqrzxXfrOdj5sUQw8lOmoZ4owksGODjvLwyQ67govmDP5UIRauaBsODiHEfCxX
         LLBx3lX7IVh6DigSlr2c/k/qSrlVGGdpaFtInp7nJhcwFQlRSqmPhlBN187/q6qxZZMt
         1B8PIJ7PP7ai+Er+6uPCtvh0TuH1ZeKkPVBHbP99SMiKg57Eb0yIo+9/j3VOcNskrnR2
         MZETvYcga+L3/ikAMzu+HJ3+oAuy+9+tsvukxXR7OUtxYnsNFPmicoKOt3UWpYTrgHjn
         KTFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=f18XJMiBnbOUYu0D1voUVJhlFQiLfDn1/OzTKJazz3k=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=B8SNk0h861QbfSlijbg6IppsT2nbN7mMg6QojXKObP6OjRAceOobZ5AWip/JhunFg7
         v/Ba26HrCh2QLcORp6rd94xFjaAuD3hvELVv1widCUucM8zdZVtzQ659+jrgzuIiHgHJ
         CvbUxQLQlqDfabNvv06KVoWUUVdzgtNAhaogPmZktbc+cTy9VTwcGVkIdg43gXunG6kQ
         E/miRt2YTs9oK1uJ3HhZJKptXCCNdr3obACYR1mJChwLrfI0l218+G/Y87f9yl+I65C4
         may8CDcTpwy43BqZbEaX2SlB+UPX6gdniQUYryMBIs5MMAwS1aV5xGOhuNMj2gLZNI5j
         SPzw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-45b1793b9fbsi93806251cf.625.2024.09.22.09.25.40
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Sep 2024 09:25:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-237-nw_gf71zNoC5CqWHrFHM_w-1; Sun,
 22 Sep 2024 12:25:39 -0400
X-MC-Unique: nw_gf71zNoC5CqWHrFHM_w-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A7B4F1921EEC
	for <blinux-list@gapps.redhat.com>; Sun, 22 Sep 2024 16:25:38 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A4BAA19560AD; Sun, 22 Sep 2024 16:25:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A1E3719560AB
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 16:25:38 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 082ED19CC951
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 16:25:38 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-390-R8hUB8HzPlu1-0zAw_CHjw-1; Sun,
 22 Sep 2024 12:25:35 -0400
X-MC-Unique: R8hUB8HzPlu1-0zAw_CHjw-1
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 9E64365ED5
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 18:20:58 +0200 (CEST)
Message-ID: <5e710237-3e50-461d-9ae7-8dd3cc34dd97@slint.fr>
Date: Sun, 22 Sep 2024 18:24:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: COSMIC Desktop System76 Accessibility Survey
To: blinux-list@redhat.com
References: <a143e0ae-12e9-4b02-9844-7dc38b5727d8.ref@yahoo.com.br>
 <a143e0ae-12e9-4b02-9844-7dc38b5727d8@yahoo.com.br>
 <b5701fbe-5116-4477-a227-a7ae588546b9@protonmail.com>
 <de76d9ab-8081-438f-9998-3509d749e0ef@yahoo.com.br>
From: Didier Spaier <didier@slint.fr>
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <de76d9ab-8081-438f-9998-3509d749e0ef@yahoo.com.br>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: slint.fr
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
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

Thanks for the information.

So all this information is not accessible to people running a console web
browser and/or not registered to Google, X and Instagram...

Didier

Le 9/22/24 =C3=A0 15:45, 'T=C3=A2nio' via blinux-list@redhat.com a =C3=A9cr=
it=C2=A0:
> Yes, there is an announcement about the survey on System76's Instagram pr=
ofile:
>=20
> https://www.instagram.com/system76_com/p/DAHUTR_vXry/
>=20
> A friend tried COSMIC and said Orca still doesn't work.
>=20
> To unsubscribe from this group and stop receiving emails from it, send an=
 email
> to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

