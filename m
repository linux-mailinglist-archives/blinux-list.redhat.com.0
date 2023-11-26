Return-Path: <blinux-list+bncBDYPVTOXSQEBBYGUROVQMGQEQV3HPFQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 772BA7F91AA
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 07:49:06 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-41e1d05a5d7sf30649721cf.2
        for <lists+blinux-list@lfdr.de>; Sat, 25 Nov 2023 22:49:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700981345; cv=pass;
        d=google.com; s=arc-20160816;
        b=s8Nw92MYnAD5eIHynTaG6e4/rEbiPoL3ltRHhw1fpe655BXaOELdrAO7awmYH0+Agz
         hsjqjlWVHmyjTTXWf5w4XEfPntP0GJNTwhzdM3/QISd4VaHYOnittj1RrsCYTfpmBJS6
         hIDSBJYrn0UtjPrStt5pIVv0sUVGPFg+Q7rpF7IXyT93j4BgsI2LoTxQGRAlwn4OvCPD
         gRtUovsq9FaCHkAlt8TaJpZmL+3/Fb73hJv44L22Keu9uNlKtvMhfBkr9Rd49a3ciy9m
         eZOwQiK0HNx93cYlfR4ak0gGQUwoHtBKXmMsAuk4qFRRGdlUKEVQeu4Wa9JT5PvEKFs4
         5VKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=GHenpXdk/zcmQqYXUbOX3iNXnWGOU7tMaAiOaLT/G4c=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=M42MvGeN5Gp5Sx6jy+mqBI9y5A46KAbysozRt6kDKzyUJORlZNXWBMP1sVwyob5K65
         TEHYr8HfqMNJI5qoXXR5TyXzk41/HNH5cM/ciu5P7lHJSwNYV4FPcgYO9omrcwCWFSW/
         He8+ADHAEEA4dndMFUecXUNPfelaioka1zq5PbTwJtQyoBbIZ4X7zE3aVpWOURalYIMV
         MPxRPihjeUmZ5vCM7ket/usudgYT+Boxb9WlVTAF5sjsbxEor3nHLTzleC2z71mhnwSq
         I4auEXmxkDZk6gcZDbYclJo2ekzcfjh8dtkteY1oEaDojPSsgkgFgr3wHGn3AoVHj/5H
         IJ/g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700981345; x=1701586145;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GHenpXdk/zcmQqYXUbOX3iNXnWGOU7tMaAiOaLT/G4c=;
        b=GOjpyr/5ZCdPDAnj5aJ7fpbat3nmz69bEj3mGwa5UCe40nn9mJz8LyNylbZaHNbCjW
         DmGRVCs5RSTppToRmaGFlJNoOhXjbEEHPyuJPdiqgI4dTrIhB1JI3lH7P6IrPUwmXW4F
         f3S6Hb2q1ZiG0Twi38xIqCWFwZygUpV2VRzQFcfV3aYBCQfsPoJc4UWyr4QdHtjoSQdZ
         MXIpl28K0YIzznDDvJ0efo35Yidu32OD8k7riqmSKxkyiBWhg7vdg2TgCYIzWF/mkd9p
         NYi7l9NQLKfbMnn7e3UYcvD5p237uaTuYwBPclPuBxaJBj6ibQBLRqP4VEOxwvFgAAXP
         5uig==
X-Gm-Message-State: AOJu0YxHWih2FgZ7mJ1FDQo6FcSuHQEM++srcUODde45WBAWF6nKJQdj
	MQ6znhCZZElFUt4bz+vDEcQvxA==
X-Google-Smtp-Source: AGHT+IFlej3C9RtOuCMgq1ok4jju9/gP/mBUcV8/jRK10zLSOhU/G/9lM7tVe4IQ59vaX9jWNiOrag==
X-Received: by 2002:ac8:5f96:0:b0:418:1c96:8ae9 with SMTP id j22-20020ac85f96000000b004181c968ae9mr10662667qta.11.1700981345148;
        Sat, 25 Nov 2023 22:49:05 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1b28:b0:423:b70e:f8f2 with SMTP id
 bb40-20020a05622a1b2800b00423b70ef8f2ls168870qtb.0.-pod-prod-08-us; Sat, 25
 Nov 2023 22:49:04 -0800 (PST)
X-Received: by 2002:a05:620a:4408:b0:77d:9591:c7e4 with SMTP id v8-20020a05620a440800b0077d9591c7e4mr2509652qkp.49.1700981344293;
        Sat, 25 Nov 2023 22:49:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700981344; cv=none;
        d=google.com; s=arc-20160816;
        b=ZjeMdbhDCT1Zeg7ZzgGxLX8M9HDkSpZzw2oRZxAMC04oOFE8zwrJnae735e7OphqUl
         Jy4oQWtNqzN1dIUYdi0yf/+gH5Y5nfS4P6AV/GVYhTWVseM/6fG6YSKnb2N2SbDq86uc
         Ta48ganNsAk6j8EeNAy9qrFxILcag69kJnUp+ifuyWG8KqwMWtr4YgmEMbDRmLQaDmSu
         kFPx6KxgjUotRm012SLV+mJnSG4z8sh1SraTJU3mZ63kg2EV5B/vlXnsy/iddHqALnf1
         SrnG4juZXJ8wb/MJJuTtC7zVHsm1+OGv2pXsonTCtcuLnCv0CgbxQjLNhSDe1jQzG2Ip
         BXWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=eGjKaZMK/G6MdG/a7Pwx9dsqoxu4cteJyosxvBdpqzM=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=SiTQVjtju1sl+//C0LHY90PlIIBX2bO3upR6oQjcSQpNl2fyFz6JVET+azBBzI33KH
         g4xPvOIfR45p2upWFIhI1Z+iJTGudn6CX773suCQastdRaFBnnRHRBrav/qden03OlS7
         Ys2otd38remlXARSlvZkTSDK13R9G1NDA/Y6B54rNGXvIqcU3ZgUcAxBGsJzkcP+Oo5Q
         hoNwj+i5nUGOmjKN5cOrlW7e7siMkgNrTDaPNdTjzsQSWjdsQ1kA0M2SLgO1QpTGqOBj
         rrueycrXchkX+Pz4GWvjwurZJ+n0C53pB8LrWk3H3t+rS1oF6hEI/IxLiM/qwIKBJIlp
         Zo0A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id w29-20020a05620a0e9d00b0076d873a45b7si6643821qkm.706.2023.11.25.22.49.04
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 22:49:04 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-392-OHI38t_APx2mOsI4fNSa1Q-1; Sun, 26 Nov 2023 01:49:02 -0500
X-MC-Unique: OHI38t_APx2mOsI4fNSa1Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8AF5885A59D
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 06:49:02 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 87A8F1C060B5; Sun, 26 Nov 2023 06:49:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 800351C060B0
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 06:49:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 544A03C0C88A
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 06:49:02 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-515-vab-oS98P76wTplb9cYnXg-1; Sun,
 26 Nov 2023 01:49:00 -0500
X-MC-Unique: vab-oS98P76wTplb9cYnXg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SdK7b5Vmmz15PH;
	Sun, 26 Nov 2023 01:48:59 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SdK7b51HSzcbc; Sun, 26 Nov 2023 01:48:59 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SdK7b4x7BzcbP;
	Sun, 26 Nov 2023 01:48:59 -0500 (EST)
Date: Sun, 26 Nov 2023 01:48:59 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: interesting email bounce?
In-Reply-To: <Pine.LNX.4.64.2311260030260.3660318@users.shellworld.net>
Message-ID: <a66fc6e9-79c6-3ef5-57fc-4aa874ed1a3d@panix.com>
References: <Pine.LNX.4.64.2311252143200.3657901@users.shellworld.net> <8d5f0118-fd28-ba98-f18a-0606ab60ca23@panix.com> <Pine.LNX.4.64.2311260030260.3660318@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

gmail has technical problems every so often and that could be another
explanation for the bounces.  downdetector.com may show multiple failures
from more than yourself if this is the  case.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Sun, 26 Nov 2023, Karen Lewellen wrote:

> Why would that impact things here, unless this group is hosted at google?
> what is returned was actually sent on Monday.
>
>
>
> On Sun, 26 Nov 2023, Jude DaShiell wrote:
>
> > with google's smtp, people are limited to a maximum of 50 posts a day
> > unless that was changed recently.
> >
> >
> > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > order." Ed Howdershelt 1940.
> >
> > On Sat, 25 Nov 2023, Karen Lewellen wrote:
> >
> >> Hi everyone,
> >> have any of you posted, only to have your post returned with the list email
> >> host saying not now?
> >> Best,
> >> Karen
> >>
> >>
> >>
> >
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

