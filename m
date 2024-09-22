Return-Path: <blinux-list+bncBCMKFVG4RQEBBXWBX63QMGQE6CVDPXA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1EB97E0B2
	for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 11:18:23 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-458657ce53asf60742141cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 02:18:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726996703; cv=pass;
        d=google.com; s=arc-20240605;
        b=JQ4op04vO9Ll/tLux/G+7k4KJTiLhyY6Y39gsHP1xKTEXAzArpW5xDfG2r4xkWah1y
         p5QHkyqF/FSOgkx3fbL6FjSuqBavQ8B5cGNOQ2+KG8JZJponTXLYh0068JgCZ8MJNMIm
         JWxsLwfq1UR/tFexGpziSqhy5UuXyBd0zx19WWglQFsMgtp33Bsl2sTysMMydNM5bO/o
         GgxM3uU+zMFUya8pSSx1fqMhnyrsRykRl6NdnM6o8IKNJFUCXkS84qKN0CpMmFtfuAsj
         J1VfDkdbmEg8ztnYLPDiyAHvWxiSBVROji2t+M/dGypwhcxidU+Z5hJdenyHjoSpMWJU
         op8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:autocrypt:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=DtdqSfZNIhXwL9wn3MoyEn1uDsTm6xieUtFZXFAxly4=;
        fh=rP7rqbwR2MACmq9GVpVv5Pl8Ey9HLJNuxeroR9FEHfg=;
        b=gXhDK5TRqgRCCVlRM9SLpHzaoeprOmzLdSizBKsA+1CosHVMl1BZwo9RrjJkIdvEg7
         WrtV5C3Yzad3nm50b0krW1tb1nVwq2eZDaREPIE3jQG4NDeSjvk92l3N21sWi2gUYn14
         dvftlQoVmOt7zFoGgIBrWilLz1ltwjSVXxZskhak4WIVSrG6nLKdV9XNW4otY3M97EqX
         8/1Vpy/YG5eZ8UayQXaevQWF13Gl5x8rTu71Bs7Jst+aEOdgrZCgjXgGcdPZOnasuBA3
         /mxMBGcNIHwGNGvQ1o4/QkbkwU9Cq9OBIZtdP0/a8HtlIKCCcUcvWjkdz+jBXHoqtQir
         /5fg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726996703; x=1727601503;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DtdqSfZNIhXwL9wn3MoyEn1uDsTm6xieUtFZXFAxly4=;
        b=KQtIC+a/ovNHe+he7mnPKM7MaO1xi1AsXSgaEAYuwE1/xsKZI1/WgsWMOoa1XCa6w+
         0DuHCbTKPREOVQj7NPelpIGdVhMQoo2oymKpr7KW/NgNnmhFzerImpShY4Mi9eFVAho4
         RLE2oSym2GDp2lMuSzIbGK2q6q8pC1xqbecFHF43nMqgSVzJGNr/R/dRVhIPWXlNdlnA
         j2WeCtm9gTXDSojgeZBVZQDtrSyV70TIZdTRi0a+2LmRAJ0BHa5GwFL0jQUP4LFQmP4K
         qd6h1MOhlY+ZOkVOIiTALlGZGMAxPifQiXJQsrc3nZiUuuqCFB4OxaDsQF+78p+sdNKx
         VsqA==
X-Forwarded-Encrypted: i=2; AJvYcCVhcpBbrf1DGUIcyo+uKYOdIH3iWOZhOUCTx/Ib1CpkD0rMqm9WBnFrIqfogn5o9GRqtzwabA==@lfdr.de
X-Gm-Message-State: AOJu0Yw+g4IoAvgz9sOAPblg7m1AtGITw75I9twNzgzv6KEf9+aEVA77
	g03lq5Kl5qUdASWy/6eT+TTNVH0RuBgPwZeXy9g1QoFdHotRh6/Cjugk3AQ1c3A=
X-Google-Smtp-Source: AGHT+IFBHfTsd7vCW8nTjdIOSTypGaQtLIKrbN8+y5yw/CIEXmCU+t9Z8qptEx2+wA1DQHge+Ldfag==
X-Received: by 2002:ac8:7f8e:0:b0:458:2bee:8d56 with SMTP id d75a77b69052e-45b2053c44cmr121594881cf.44.1726996702595;
        Sun, 22 Sep 2024 02:18:22 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:11c8:b0:458:2aac:e50d with SMTP id
 d75a77b69052e-45b1634eb28ls39531011cf.0.-pod-prod-01-us; Sun, 22 Sep 2024
 02:18:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVOs08EPWsENZN7bxouMqvh+ScktVqoUX6FHQeMYSua9EQvWEE/zDQG5N90U9ckkOcYWy8vViX/XH6DBA==@gapps.redhat.com
X-Received: by 2002:a05:622a:b:b0:44f:feb5:b2fe with SMTP id d75a77b69052e-45b204f2298mr137127301cf.19.1726996701545;
        Sun, 22 Sep 2024 02:18:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726996701; cv=none;
        d=google.com; s=arc-20240605;
        b=Y/fW3h6vFb4Dx0h8srwAbVwpiA2E0nysBDvp/SbxPuqZg1tbAB03abJpsL0MWHb6Gi
         Qu15dz2uhq2Ym1jbKmLOcKQx4n+2a9NtART2cTmJ6Mw1L7DXiONLAYXpK1fZnZvaZG0u
         hccNbDT5MxjH/sDec8xhoCG1dovtqtFTjXWXeadUChwUrnXAXq0BLuRQxvPS9Z6Vc937
         mzgMFOuq6KVdJWMcxcqZuwfwhxj3FrPFE0QxrLJRtPEN1mX7ktHC7zWotm5lwT81bfL7
         PJgEJTmk1w/qg53bYZs8Bk4bQaPx6tnS7q5qreucC2INMnobZ5nQ4/vt4GRpwooshso7
         s79Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=lRzpL7lEcJjfkCLx3wlQBTZWSj8tUE7fFd6BdCTevzM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Zz8z2FYnuJH11NMBgTvxsv7xvgV457S+umeTas68OknZEj4UPqWXnkwExQ0HiXgr7N
         crfmybnmqd8uCHnD7cOjfkcNsCAyfoCuyl1cHZkbZ5o090S0Sh43v+R15APyyQWH/UFl
         Nhn8mIVNIUdSzI/XSE7cSGwa+rBbE4+gSZNJ1wZ7BbxOROemU9V6khupMJAa/8qJ1bgL
         xPzqCxW/dmTDBTnc+kKb96p0XV7eXO2DlTVJop5KJhjSPn4Hx/Txi+roSRKMJQBOl7ZU
         T6mANR7XhrssIjv3HAMpQEfpgWWP/H7p/lS4lwjma+TdqS13/AA/pyviY8Dknqxc5SsE
         nN9g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-45b1787b23csi80379551cf.185.2024.09.22.02.18.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Sep 2024 02:18:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-145-scWRcU11MrO_BZJCeJEcPw-1; Sun,
 22 Sep 2024 05:18:19 -0400
X-MC-Unique: scWRcU11MrO_BZJCeJEcPw-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 23BC518FC2B8
	for <blinux-list@gapps.redhat.com>; Sun, 22 Sep 2024 09:18:19 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 204981956094; Sun, 22 Sep 2024 09:18:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1DDDE195608A
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 09:18:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 85300190ECE8
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 09:18:18 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-149-OA0xtEnXP8GRh0e9KTXeAw-1; Sun,
 22 Sep 2024 05:18:15 -0400
X-MC-Unique: OA0xtEnXP8GRh0e9KTXeAw-1
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id E49C3625F6
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 11:13:38 +0200 (CEST)
Message-ID: <23203c48-22f0-4a1d-8bd2-4f1e495c4044@slint.fr>
Date: Sun, 22 Sep 2024 11:17:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: COSMIC Desktop System76 Accessibility Survey
To: blinux-list@redhat.com
References: <a143e0ae-12e9-4b02-9844-7dc38b5727d8.ref@yahoo.com.br>
 <a143e0ae-12e9-4b02-9844-7dc38b5727d8@yahoo.com.br>
 <b5701fbe-5116-4477-a227-a7ae588546b9@protonmail.com>
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
In-Reply-To: <b5701fbe-5116-4477-a227-a7ae588546b9@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
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

Hi Ratistlav,

I am not tanio, however found the form mentioned in this X message:
https://x.com/COSMIC_desktop/status/1836884041070522861
that seems top be posted on behalf of:
https://x.com/COSMIC_desktop

I didn't dig any further, being not a big fan of X or things needing a goog=
le
account (to put it kindly).

This said I am puzzled about the purpose of the survey. Most of the listed
features are known to useful to some people but no course not all, so do th=
ey
plan to implement them according of the people answering?
Further some questions are missing, at least about visual keyboard like onb=
oard.

To answer what you asked in another message "So, can we run this right now?=
 The
fact they have a survey suggests so.
Has anyone tried? I should setup a VM and check...":

Yes you can run this right now (with of course limited features), scroll do=
wn
after "Try it out on your favorite distro!" in https://system76.com/cosmic
to know your options. Friends of mine have tried it in Arch (building the n=
eeded
packages from the AUR) and in Slackware-current (writing and running the ne=
eded
build scripts)

Cheers,
Didier

Le 9/22/24 =C3=A0 06:01, 'Rastislav Kish' via blinux-list@redhat.com a =C3=
=A9crit=C2=A0:
> @tanio may I ask where is the link you provided from? Is there any=20
> official System76 announcement of the survey?
> It would be great to have something I could back the link with when=20
> forwarding, Google Forms doesn't provide information about form=20
> creators, so right now I only have a random web address. :)
>=20
> Thanks!
>=20
> Best regards
>=20
> Rastislav
>=20
> D=C5=88a 21. 9. 2024 o 4:46 'T=C3=A2nio' via blinux-list@redhat.com nap=
=C3=ADsal(a):
>> Hello!
>> As some of you may already know, System76 is working on their new Linux
>> graphical interface, the COSMIC desktop. They have created a form with
>> some questions related to accessibility. If anyone is interested in
>> participating in the survey, please access the address below:
>>
>> https://docs.google.com/forms/d/e/1FAIpQLSfQcq6638l0yNIQf6GFalMqwTVGFiZq=
YsaLt7TFGSCtktVDdg/viewform
>>
>> Best regards.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

