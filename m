Return-Path: <blinux-list+bncBCAJTHUAX4NBB55L6OVAMGQEXQAA6UA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D877F333D
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 17:08:25 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-41cdc2cc0b4sf121243981cf.0
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 08:08:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700582904; cv=pass;
        d=google.com; s=arc-20160816;
        b=oQRnD8Bc6dm+PKi1QWz28k/vRdpYR31DBB8Vl+FV2+G7pc+ER24sVVtmfDFICn5zTE
         WiwltmcnYcOpFA4WB+MA5LyAPtd1QbUFNJlO/+hvV6Z1wD7dmQVJD64kl1iksznV/zAa
         pJmIbQqu/9j6Ao2RZzCgHEx9WQsPsogzOx3mU6awiDYmJuzkb0N0opa1lj7GrAW9AvLL
         38jDeygrnUVABEIRHTmGNg4HTwuBZpbasQiV6+JZtI9LnMe23v7raezSyHozZEtSAzhs
         7n9FVlo6S7YYzTMMSbrHMMRf+tLfkm2JFspf2LFLy3HxbWAHdfor5x8R6NCsAIdwoknv
         anDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=DN6sjBcYz/9X2POgfkSJTZvCxxG/ayLZirXKC5Jmm14=;
        fh=AdcABl06ylR3cy0jKCWLWxSFciR605LM8bivWxFNCss=;
        b=XWjifDwFWzNCdArjPTtT/rxIchm+2ZZ0yAUYlNXJyeJWojMp6R36O+RkD2qJk7Gufk
         cUav5krk5pIOxi3nWKT/0QpSKQL8/AlFcTiZVl1eXPKVtQy0ARpbUVPQRlIXObjOid5e
         eQdfz+2NZp2qvRCLKu+i3STYsiA358xh5/ShMPuzGZC0MgaM7UP9V73wkUD13F5nI0iv
         8/yvPnjX+uUFPU08dCdqEXEv/ZB9NEANnP9iWT2Wl/yPtU9dG+K7Rj/vaKU5fWJRByfg
         gFSwG+suZgNr2yOJVeSCcrjXKN1qVzpiIxA3JfNtU150jURx77p5kyrFheB1H6bvNpMF
         qiqw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 72.167.218.207 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700582904; x=1701187704;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DN6sjBcYz/9X2POgfkSJTZvCxxG/ayLZirXKC5Jmm14=;
        b=hewnLIe34Py/Rdk93pUCkNiBEBBIDNxGps0C0m4OLlNeSyXSmDw+wQJ0SVtuVE/+7f
         N/Vmug9HIpIUK8on+HImDjYuNU0bEDxDMzpVAVi56lyk6z72m58LM5Trb9DhHJek6ewS
         Sq+t32KxuOD8zWgY6+Q8JvXv7FMDztF+PpmfcH3acUlB5HiO/68hceBgh7ef/Zo/v2AZ
         1dwppAOOOk11KSwebtDWNgFzk1QR7KfQr7VTZr5/OYuR4c+ykSq/fuMpbuT95uIt8FRt
         PfkQ5OKAAt1MsBUSNDXEDKvn86xWznykRhriuSXUpD60OYOCZdWu30uEd5XhbVJE1nD4
         0nIA==
X-Gm-Message-State: AOJu0Yys/iHKK2zrdSx46VxHKVmSdLuYBJQdsx3UQh7pSGF5AFPRlkQu
	yKgroFqH4brqW9NtcWeXvBGscA==
X-Google-Smtp-Source: AGHT+IFTR3KAgsaik7zSXqTKC58um0MrqlPy2VZPv9N6za/TXHg27+PXqV+AeEPvuYDMXXOYsba66w==
X-Received: by 2002:ac8:6652:0:b0:421:bb56:b2e with SMTP id j18-20020ac86652000000b00421bb560b2emr4079286qtp.0.1700582903777;
        Tue, 21 Nov 2023 08:08:23 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7f92:0:b0:41c:d310:a7c2 with SMTP id z18-20020ac87f92000000b0041cd310a7c2ls515981qtj.2.-pod-prod-00-us;
 Tue, 21 Nov 2023 08:08:23 -0800 (PST)
X-Received: by 2002:a05:622a:104f:b0:41c:c27e:f8f6 with SMTP id f15-20020a05622a104f00b0041cc27ef8f6mr4900516qte.23.1700582903079;
        Tue, 21 Nov 2023 08:08:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700582903; cv=none;
        d=google.com; s=arc-20160816;
        b=gtFIWea3klx+Jgb3MPS5/tzh9EKdOq6MC+52GjnnYTM+2gOV1JSK3MDMGlANmoqv5F
         M4KoahbPiV/dPjFG+xhY5hbtqo+COGYe7MUSAXApBZ3s7eb3bryE1mECS+7ueeqDjiPa
         LPuoJhZFlGC95/siRew/OvNPFHzwx/3ODBlv8na2Z6/2481nkBEaLFuQeBCQiy4MtFVu
         DuoumlZyx8lM6qwwmhNCobuDEWcdA5Vha/iBDQi2EGw92VoWvJXNx8KCWg8mGpQjd7aT
         4IbavWEp5g8C5IgPStowp3yDdwjjLCym2EJ9ph2GUEh4/qmwlC2AhhEEKVaEmZkkb3CD
         qnWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=LfoZH1LKyFMab770hGrHiZy8U+Xyy7aCtUtJDJ5vXYM=;
        fh=AdcABl06ylR3cy0jKCWLWxSFciR605LM8bivWxFNCss=;
        b=bjUceb/8Yi97JyrxTGrrAT+J0HIcUrlT3Sn7f0CF03uPCgrOur6JN1JEJ2VngGSWYe
         LTcT5vOvX49N5emeekoN+lisfk4AUX8r/t5vjFQQ1qnbNkvWfswvhRhHBCEi1LXJDwsC
         NBBc1mc/AJ0BASXJNFKqcsPw7n5uAsx94UqMlmmFsYY65cEjZxI9CsW7N00ayI+r8sJO
         j1CaiLlS/nrJkLX+HltA5P4eVendLZ/cKLlsUbxhtphuBH0mQfNq1KcXq8zcIvPEW0N8
         OAFWr9SRcQBIZ2dkK2r1w/maUAg6W8LnJdWmr67lKGhDDMUuHn2cxczenKHlh+0wgZyA
         whnQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 72.167.218.207 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id p10-20020a05622a13ca00b00417b5238732si9768942qtk.447.2023.11.21.08.08.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 08:08:23 -0800 (PST)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 72.167.218.207 as permitted sender) client-ip=72.167.218.207;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-131-mCp28C6pNqi2AXnUITjAYA-1; Tue,
 21 Nov 2023 11:08:20 -0500
X-MC-Unique: mCp28C6pNqi2AXnUITjAYA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 11F153C108D0
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 16:08:20 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 0D7D62026D68; Tue, 21 Nov 2023 16:08:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0633C2026D66
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 16:08:19 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D9619185A781
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 16:08:19 +0000 (UTC)
Received: from p3plsmtpa13-09.prod.phx3.secureserver.net
 (p3plsmtpa13-09.prod.phx3.secureserver.net [72.167.218.207]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-448-DCFn0zNwNMaShg-iXEyQSQ-1; Tue, 21 Nov 2023 11:08:17 -0500
X-MC-Unique: DCFn0zNwNMaShg-iXEyQSQ-1
Received: from [192.168.50.47] ([68.179.171.114])
	by :SMTPAUTH: with ESMTPA
	id 5TGarWx6YgXaw5TGarIqKR; Tue, 21 Nov 2023 09:06:25 -0700
X-CMAE-Analysis: v=2.4 cv=aOo265xm c=1 sm=1 tr=0 ts=655cd581
 a=YrtbGwoLYg24scX8z8I1bA==:117 a=YrtbGwoLYg24scX8z8I1bA==:17
 a=IkcTkHD0fZMA:10 a=20KFwNOVAAAA:8 a=NEAV23lmAAAA:8 a=Xs5IbmRVA-t9CXYcEWEA:9
 a=QEXdDO2ut3YA:10
X-SECURESERVER-ACCT: cstrobel@crosslink.net
Message-ID: <e7432340-6a1d-45af-be1e-42618a0670ba@crosslink.net>
Date: Tue, 21 Nov 2023 11:05:59 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Regex for spaces
To: Rob Hudson <rob_hudson_3182@gmx.com>, blinux-list@redhat.com
References: <20231121.153445.633.1@[192.168.1.100]>
From: Chevelle <cstrobel@crosslink.net>
In-Reply-To: <20231121.153445.633.1@[192.168.1.100]>
X-CMAE-Envelope: MS4xfDGTzSRSOF2EdSuqH1BVIW+k7v85XQLu8F+h6fpmSjhfnLJU5vlbNC+weaH8R5zMOWOGJOE+5n2VxT1pkiZZeLxLRGqApqlQzbnqu+PjmOeIGWYEcxkx
 Xe+yA3aFvC9ixH2WYGqsNaWbnTidd7470LNzNZNjaVp2klkvUQWN8fIx+sjzzivmHWAjuRsZNtWwdig/hgl7qDyOe7gGFrIkr/GdX2WSQo1fl2wvSFyVhFPq
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: crosslink.net
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of cstrobel@crosslink.net designates 72.167.218.207 as permitted
 sender) smtp.mailfrom=cstrobel@crosslink.net
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

Might be easier to use a strip type function.=C2=A0 You don't say what=20
language your program is in.=C2=A0 In Python for instance you can say:
string1.strip()


On 11/21/23 10:34, 'Rob Hudson' via blinux-list@redhat.com wrote:
> I am not good with regexes at all. They give me a headache lol. Can anyon=
e supply me a regex that will remove any trailing spaces in front or at the=
 end of a file name? I use the program brename:
> https://github.com/shenwei356/brename/
> I have a regex to remove double spaces, but now I need one that will knoc=
k off leading and trailing.
> Thanks for any help.
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

