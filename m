Return-Path: <blinux-list+bncBDYPVTOXSQEBBTES7G2QMGQE7VABNNQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A4A953A09
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 20:30:38 +0200 (CEST)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5c65e857b43sf1309301eaf.3
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 11:30:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723746637; cv=pass;
        d=google.com; s=arc-20160816;
        b=NUwloXb256fZ3Dgfb8T8Kktv10LrybR+BKl/+qWFyHCvU+Jmza9GoNzh3/51AC9BR6
         bqFOUwjoeDqnC18GC+m/UJDqkfaDFG7B8uR617i/5OoYs/NxEVI5bqTouaV5UVO1PD9U
         S9wBXVA6vDA72rDqGvp+fV4lPXJLs/9d2bxr6Jy4UiUlv06XPXWWrVe0/m1HxUqT7XnH
         QpJDMVuqb1tLEU+xtgl5tu9UTVWPsW6WDF59zvhNqCFgbkx8jmUvU+IjorhJ43yREriZ
         FggBRnNxTqcuDBCrKOVeSVi+8Ibh/7hicykoMpdVqDJIjrHWFSnQFClmCmR4bhHPLHtk
         LGqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=mpza4LD+xPB5Vsi6wuq5as2Z+HR/VNP0RS06NvDUwC0=;
        fh=5G7MJ7FIERccGtow+NalKm/ybRINOeDGhxyDFBk+vEw=;
        b=IucqQg6W6w4cRPRZ4ORunOEDUvbkjKPtoHGqyXnUUt0yjqpX+Y0kDkHorn+FBg+SFq
         h5VXrcaWbraVGtR7YB4UBg+4xIHPUnG4hiOWlsD4JPGppl12oHsmPADW+DczXJH3E5wm
         iOJv4fTLoFUNJYr6YUaATvMUZLRVWB7AMj+eyw/rJ4A2ii+jiVkQ6MnN7w3KeOjnQuLi
         WLxHnWSasHhN/6WQ/QNUYzefyMHzYxCDXI4QniBIRloW3JH/2/fKxq6iYztTXK1Zux0+
         y86uaLtGNUTILgzn4+Eew8IgP8uw6eFmdWze/EDbN6vvPSEhTD4Krz4XfZolAkx2R+ZJ
         +Xsg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723746637; x=1724351437;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mpza4LD+xPB5Vsi6wuq5as2Z+HR/VNP0RS06NvDUwC0=;
        b=GZ0+tuHdIQanbk7RnIdAyKg8ag9QzqiSCmDIo0RhI+FPLLLjx2PckiTNKW1YIjQ1lp
         qUCm5HEYXaxhqpoaXm4P5JlZtYamjWBZH70GOcUEAV88x0q60dy+E8dHfqbgGaES+pEL
         zFm9MopqO2e6K082cMiXH8rgNAIUK1C3RIMjwgZqht6TESTcIyD6ZpyEOGlLlGF6Jo1Q
         BVLRwPEEzEAnLeBDflD9eFiNrupIhinSAlDOtOmLs4p5AY1XQMGDnrk2Cfg9K4A09fnS
         5rtkytChReF7aypcjT2/caiBK/2d+dHAlZjCIn1ZKF6LaOmEoBUl6JQAi2R8Z2UKO1Wo
         HPrA==
X-Forwarded-Encrypted: i=2; AJvYcCWQl7dk8GqRnOxTmr3/qtektOichDHGHAbW0v5ikaDUip15/aelmXEFuTMg6EQHc0LBPpbxdHkMTOF/Asli5UnEGBzuvo13JuLG
X-Gm-Message-State: AOJu0YzhSbYNFDDbzNT7QLORPHJdPhZgTUB4uaS8CXk3/Zh0n+QF37Q8
	Hu3IKidfsiLz3K2MavHObnisTIdeuu8v7RkVXaoKlQrRyedXUxMLABz/7oUfOpo=
X-Google-Smtp-Source: AGHT+IFHQz4fGu5Y0WubHdmi9O7/8DBSX5+z1hyZpv2hu91YVmgakIOfSEWs1U/oPiHw5wCyEKDihA==
X-Received: by 2002:a05:6820:2283:b0:5c6:aea8:aae7 with SMTP id 006d021491bc7-5da98024680mr916509eaf.5.1723746636938;
        Thu, 15 Aug 2024 11:30:36 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:5445:0:b0:5c4:4ad9:156c with SMTP id 006d021491bc7-5da88822e69ls1209724eaf.0.-pod-prod-05-us;
 Thu, 15 Aug 2024 11:30:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUbetwYJQe7G5JBPBeWbyT0emxrIJ75CB+eyqB87IerLsaOu9Vn0s0xE7l4iMBGLntj8oJ/k4PiYypAk/fCAewQz7OY/N9ix4feesjt
X-Received: by 2002:a05:6808:2195:b0:3da:ab89:a7d2 with SMTP id 5614622812f47-3dd3ad0bb4fmr385419b6e.21.1723746636145;
        Thu, 15 Aug 2024 11:30:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723746636; cv=none;
        d=google.com; s=arc-20160816;
        b=NBds/aHn7tiOaNyFJaplkSQIzLmOlEROzdaW6dofYXSnW2GQwZ3u8RFRbv2CbvFaWs
         92kiHxC+3clqkb1a3WLCGIJoJKDi2vpR4f3StNkx0aOD0Jnd/rNLUq6ZbAv5IOjdKZqw
         Vpxf9ZA9AjiXnDIM3armI0/pxY5TtnFNlc3EKh9dGBYmrg21um6C5QdIbiWR8RpiOAV2
         h2/0DjP8Mt+BfpTo0DmG3Ip4cF6TonfdsQt9RX6vEokTFjPRddNDEDLytpiiCW4inpcL
         RXSJFJQOiTPSSvlg8O9j3UoAb5ebwh/wLhgPO/lpxL/OTgmLjSQtHGHR/3lWn0x3DjRV
         /MjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=EiEJrEjDpBwmAmM4Y1uj+lz3AuQxYBnuFdtrtEUnn1E=;
        fh=RcB08v2SS9qljmT773JX0JekmX98z7D03YxqzkDMfog=;
        b=1KXqgSM77T37L/+q3qJY6nCsnBs6DxZ5R5z/yF1+OGxIu5gYWoTHTNhgYvCvttnqEi
         NoBT5n4YKWoRbQHeIRKB5929wdlLqXdrqYzSQA1lJc+WFldJfHMNIPkYa6qLJd9BlaS6
         YsFS9eICDiNlodG6XSBf6h4WupkIJQOW6/qsMGEFDcsX2GIozNX6Hrlwhry3ZjbOQF7v
         T5ShZmeoFGRBndV4/p42FMyK24Nr6HUqEZZZWXGcXA/JCYUiqYUbc5YQ9oRae4e837Oc
         cqxuFdBR6zSzaQ+BM/Q4gCVf4TdHAIWwMPtXJx3Awm7OW4t8KELzNuVPMESQ8gF5SXZV
         J3jg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-4536a0fd80dsi24882951cf.794.2024.08.15.11.30.35
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 11:30:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-692-ISD8zdbfOvuLspd1Jw62pw-1; Thu,
 15 Aug 2024 14:30:34 -0400
X-MC-Unique: ISD8zdbfOvuLspd1Jw62pw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B15101955BF4
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 18:30:33 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A62E1300070A; Thu, 15 Aug 2024 18:30:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A39AD300019A
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 18:30:33 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2630B1955BF7
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 18:30:33 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-342--lVKyxGgOyehxIlz2-_f1g-1; Thu,
 15 Aug 2024 14:30:30 -0400
X-MC-Unique: -lVKyxGgOyehxIlz2-_f1g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WlDFf2gcDzxvt;
	Thu, 15 Aug 2024 14:30:30 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WlDFf2Pmfzcbc; Thu, 15 Aug 2024 14:30:30 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WlDFf2P9NzcbV;
	Thu, 15 Aug 2024 14:30:30 -0400 (EDT)
Date: Thu, 15 Aug 2024 14:30:30 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Kyle <kyle@gmx.it>, blinux-list@redhat.com
Subject: Re: emmabuntus info
In-Reply-To: <e0bdaa40-6783-4634-91ff-42f3d1f072b4@gmx.it>
Message-ID: <9b92c4ff-0e8f-3e9e-46fd-71d961e4ae49@panix.com>
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com> <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com> <e0bdaa40-6783-4634-91ff-42f3d1f072b4@gmx.it>
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

Installer is in applications -> system -> debian install


--=20
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 15 Aug 2024, 'Kyle' via blinux-list@redhat.com wrote:

> I looked at it in gnome-boxes. It defaults to XFCE, and Orca comes up
> normally using alt+super+s and shows its preferences window immediately.
> It starts up with the Pico voice out of the box, which may be better for
> some users than the default Espeak voice. Unfortunately I couldn't see
> any desktop icons, even though I could see that the desktop=C2=A0 setting=
s
> allowed for icons on the desktop and I could even arrange them. Perhaps
> it has to do with not being used to the way XFCE works, but I couldn't
> get to any top bar or panels or anything else other than the main alt+f1
> menu and the alt+f2 run window. Applications in these places do seem to
> start without issues and work as expected, although I couldn't
> immediately find the installer to see how well it would work. I tried to
> log out and start the LXQT session to see what would happen, but the
> regular user is locked with a password that doesn't appear to be document=
ed.
>
>
> So the accessibility in general seems OK, but it didn't work fully as I
> expected, and I'm not sure if that had more to do with XFCE still
> needing work or the fact that I'm just unfamiliar with it. Hopefully
> someone more familiar with XFCE can comment further. For now, I
> definitely still prefer MATE, and for that, Ubuntu-MATE or
> Fedora-MATE-Compiz may be better options.
>
> ~Kyle
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

