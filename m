Return-Path: <blinux-list+bncBDYPVTOXSQEBBGFXS62QMGQEFHMTWAI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 2130093E3A8
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 07:48:10 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-44febfb1ae4sf31760421cf.2
        for <lists+blinux-list@lfdr.de>; Sat, 27 Jul 2024 22:48:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722145689; cv=pass;
        d=google.com; s=arc-20160816;
        b=FMJMelF1qP77/f1DTAM1HcrUQEd3ePd1rlraNmamHGXcexe/VGC8bJ7NJl6AcWRAsg
         lqJt1wGS4kCY9zoSEFehStjdesgwVvr3iA/4BN5IRxeT9IGaKYFH68NcVsY9glhA/2/9
         UgqoX/bl4yrpDgTCR86Fq2CtNVSoEOLnCP6zT0MzQXAEiELYKdCcloqX8Li60JgRcBD7
         pIsbo2F19ntkfJanax2oOvjEnx9I16VrAx3/TXEv1nqfusY/+qcmK4t2HMWDZN3yhf1q
         l03rhVWvcf3CdvgfAwgVmYfkzP80SG7rU9thPsMwFlMhzgZMJrVhoZrYQoxoYefDZ9U4
         7y9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=1F/1YpOYoilH8tOvao8RrgFouSs4WreU4qcDZWMNFBA=;
        fh=THo/2yLEsOj0j3txCQ6uu49ggpdSVb9BOld22AWijko=;
        b=DHu8AEkuh4/6aYVCbLvKIQ6EnLm5Act6bsp6yLMHWEdLr2ftmYIJOUpIfsJ243o7Ud
         zUZ+T7m8y/6AHtZs8/UaLn0C40SSoVCCY34Y+ZN7kGBPu+o3yDqm2ZpKwyLaWLL6UZD1
         fiU5pmLlI5xZLDf14oQNgsBf+cK1I8gKq6U0l8oh5xAVxacF7rWwsESVOkqI8w16CA8R
         RAlX9AcpwNbNNu00gbdEf38ZHXi+6mRuDxnQkFpFBeicMqqS+tGNtojDeictuyBxh+a7
         xPx539MofY20/EPiun9o8r2/vMosVLMJt76XUswACsPQOSrKrY2rxyonysKhbWKtwl+r
         bTag==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722145689; x=1722750489;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1F/1YpOYoilH8tOvao8RrgFouSs4WreU4qcDZWMNFBA=;
        b=iEbJtIFClNfnKldOYUibmt7XFyMvbNUEhPj5Wu0dGq4c23xFv+Q+zh30M6G8No2/aW
         UKxRijqucY3myXRe2MDSp1EnEJH8geRfd2PfQw4srqvpolBw7GBBJAyL60VrJGr6gl3F
         YZJMPOI2LfYD0oIa8f5q/j5s/xSAM3HE/no/EDmEtndrL4B9+dDMlaP40aI6UFCBlgyH
         GhrTNCRxPqQzCa73BJROnAsxojZWbfOtggBAiSKKj5OGOXISbYxdCjPitjt1qPP4gWDw
         hWy4oAkP/BabyF1+OpalcmeKXIvI+evsvXVBdvehgZS2ocSPcds+ySLxe4Nb0oTjyOPE
         YZDA==
X-Forwarded-Encrypted: i=2; AJvYcCXtvvUFYQ0ld4VRj9iPUBuiaTNyJ8twOtyE3rpYwZveQl2QucQUzNbdxJVz/brVVE4K8cVbMjQ4Fq4vA5VS9/aHVLfEZFRasQzj
X-Gm-Message-State: AOJu0YztcdN+kAeTUvjpsGai1du41fDt8V6YTHKAjKBvZmIdtFlgnT0M
	k41ZYC7owazd2MRo9GDfJ8Vd35gcmK/4QdiXiUkYriVOnu/PvbUlaSuzZO8B7IA=
X-Google-Smtp-Source: AGHT+IHV8Xv37LGYoCDCyYvPBEqoYZUZrd455LWllR9FTNeSscuIILosBW2j95nwU618frMW6Lg+bw==
X-Received: by 2002:ac8:5793:0:b0:446:5aa4:c428 with SMTP id d75a77b69052e-45004d7a48bmr55014591cf.9.1722145688878;
        Sat, 27 Jul 2024 22:48:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:490:b0:440:337d:f8bb with SMTP id
 d75a77b69052e-44fe2ec5235ls64023471cf.0.-pod-prod-07-us; Sat, 27 Jul 2024
 22:48:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWX2/P28ZOXYKE3rCWROHiDLUxHzqmvSefFCt4uJX97kI+/QPCP3q15kDoLBPltlk6ru2CWCbu1MSUyuRoKe//qSyWXrIn41sESonbP
X-Received: by 2002:a05:620a:2982:b0:79e:f78e:c554 with SMTP id af79cd13be357-7a1e522a500mr602113085a.3.1722145688173;
        Sat, 27 Jul 2024 22:48:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722145688; cv=none;
        d=google.com; s=arc-20160816;
        b=Em4xa2Z6AjrK2IkcPW7zwjWFs/pLu3Bqo28CaXlw8fbbY26uadEMPtcOguy++TuIyn
         PZ+6OrPZ0miVRbedKhum/zx0cm7ncJ4fSp2S2vSLE9Cv7JaZJ3D0x6+IrfDPudI5H1kR
         8Q2fmeIL5xGchEnSCjgh8g3htLZDMTdzXCthx2RwdMj5Fta6hBYPNHD81gTlv41dxSRS
         gcx9FLOL1NS3IndcyQ4RIqWj5LbyYgtJ+gBIcYOasIrxCLfjEDZOH3S/miERIuRXqJ0a
         YxPMy6tzWK7p4DL2twalrz3dKeGE3Af3ccrSzS94dF4eBEy8ZZJBmdaRgfy60uBmRr4R
         YyMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=CZPkmdVto/NVDzAnKNCxmEtZGApeGgGlARIsDOJii3s=;
        fh=X474ugARXFBuLDcCHCBv2LorVmb9BIhZgAdqk1ZgozQ=;
        b=bo9U31uf1hFP6l2HDCK6ONC741mA89qjY9IjwHa5xKVnhHn2LqUWGPSVjBawyKLNmg
         9xOtrqXR8kcmlHYoQv7XE/ezwn7CY+kBh4XVBRuj/GWn/DgITlRnsheSDJqXfpC5M6nd
         NatfBDaCL4I+5Mx2uPDSmcyN4dL7F90JoODZc0dHBqBQ84Q9JGrQghy056aj3mXgpIsx
         R/oLo/e2sf565YVNH7FxOeIrGMt7ZbbwVFbkWcqc3kKBNTuDkr+Y7hxz0JbRQBwpSWvB
         oFymvwGDx3JxknUFVzxHC41aKeP+rfwdL7+g/uyTwZ6FGu5vc9jyIdUieQEYNHoEh9Cs
         2dOg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a1d7462a23si779208285a.481.2024.07.27.22.48.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 22:48:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-539-UFRzEOLONji1a-NStlYVHw-1; Sun,
 28 Jul 2024 01:48:06 -0400
X-MC-Unique: UFRzEOLONji1a-NStlYVHw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E044019560AA
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 05:48:05 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D14C53000193; Sun, 28 Jul 2024 05:48:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CEDB9300018D
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 05:48:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5129219560AA
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 05:48:05 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-501-eTPTdhY4MiKW-461yuFyKg-1; Sun,
 28 Jul 2024 01:48:02 -0400
X-MC-Unique: eTPTdhY4MiKW-461yuFyKg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WWrBB3xsVz1BBt;
	Sun, 28 Jul 2024 01:48:02 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WWrBB3pjnzcbc; Sun, 28 Jul 2024 01:48:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WWrBB3lJpzcbV;
	Sun, 28 Jul 2024 01:48:02 -0400 (EDT)
Date: Sun, 28 Jul 2024 01:48:02 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: john doe <johndoe65534@mail.com>, blinux-list@redhat.com
Subject: Re: scan and read under Linux
In-Reply-To: <61c34791-bd27-49da-8ee0-4e464ed373f0@mail.com>
Message-ID: <011c42d4-d2f0-b563-c164-46c3747a5ae1@panix.com>
References: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com> <61c34791-bd27-49da-8ee0-4e464ed373f0@mail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

The pdf would need editing since it's missing a LANGUAGE attribute.
That's why it won't talk with a screen reader in use.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sun, 28 Jul 2024, 'john doe' via blinux-list@redhat.com wrote:

> On 7/28/24 05:20, Ryan Mann wrote:
> > Hello.=C2=A0 I have the Fedora Mate spin installed on a computer. I hav=
e a
> > USB Cannon scanner connected to the computer and I was able to scan a
> > document using Document Scanner.=C2=A0 I was able to save the document =
as a
> > PDF file.=C2=A0 How can somebody who is blind read a PDF using Orca? Wh=
en I
> > enter on the document, it opens up in Document Viewer, but I can't read
> > the document using Orca.
>
> PDf does not mean that it is a "text document", could also have been
> scanned as an image.
>
> --
> John Doe
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

