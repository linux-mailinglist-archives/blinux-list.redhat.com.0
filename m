Return-Path: <blinux-list+bncBDYPVTOXSQEBBI6LTKVQMGQE2UYY73A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C407FCD0A
	for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 03:44:53 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-423ea6dfcdfsf37741cf.0
        for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 18:44:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701225892; cv=pass;
        d=google.com; s=arc-20160816;
        b=UiRwfD/fXP0UWkSbjDB+NTPOZzjUQAQgs2IBHlV+EagB9ZbeWtdOl0tSHfFk6nB4lT
         TEF8V0K7jukelbd5zRx4be9ey+vv7hh9Y+YiKeXgqSymNFMx1Q0GrZu56LNL9J+ahuBG
         FANkXCyvKW7NmtzdcCNKew72DKv0JvfJmqYZlUYpiX9zKfEznN8yzqPnG65WbvED45zL
         3qdhY9yXW9HytPu/OysZAhJx4NSOFfEe8Ohm04vXW83yb24kAlUpcHQQnLanKEx7wMu2
         JTo+PCk4xqEh53HSdBdwoFzIR8P2wQjw84CVZOEs45sIBMZjlI0030I6BMX3CblG5CwF
         c29A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=CvLFwg0C/Ta512SWiDFQ2xcbmfC84cz6sM+Zm0JVxMA=;
        fh=DDJNEamPQgFR89dBvCYCwteVXgkmReHhgAbUtLN6M14=;
        b=EBsuiODe9GPzEHxx4GZ5717fGju8Url0KS+nrly21nEywhPuCrKhxY0vK90MO3JQYS
         L4b1NBiJB0EpoolEqYoyTALt2i4gEWu1OKKpZRFLBc82GWjYxX5VX7AXOhyJCuxoZi/t
         ZmQ3rg6VMqP2KWWUBe9vyjMkbFUjFOO1IO5KaINqLQlanmKfYFkY2Uol++GTeMPoX33h
         MX3aKGwBCAbiNzXLg6F3UA0Ei5cuXvLTHpzM5akgwZmwliHE1cs19KnOXvBRcBhMJhNI
         CmZLL0xNZ35GgnEs2dpjwrdEqPop8fLX6edD35r2BOilqiZWCknz5s0wE/IpRWQ0MRuH
         6Jfw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701225892; x=1701830692;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CvLFwg0C/Ta512SWiDFQ2xcbmfC84cz6sM+Zm0JVxMA=;
        b=a+v/BL9o1MfEoIA/olxqlEknefGXY4xB2WSmMwfjenupqK/d1sj+LYXRT+ygr0EaxI
         RecByt1Rac4zDVF/g6Ga8nCCSBkvIcS/As6msp+2yz9qvi255zhXj01R2beMsyAf0ahL
         VwCZS186guAZ62DRczm+ycamrfOPh5/0eGU9qmIpYTkDnP5V2c9CBjSDUqN6ee1K/x0w
         /GevLZv20bR5gN08YLQl9HqpM8JWn6iut+0LBOjsPj+pnqWNnuTdbbxlVXeG83JgdnEX
         J2FuYZAw4S5j3CHKlrVUkC3/ZsGqOl8BNe/1peOAaeRKCWD2j4DvCwMi2HSCCgeEkiEp
         ku2A==
X-Gm-Message-State: AOJu0YwuJzsFYMkXpka9vkR2Z0X1dO7jSDIFZzVS6sx139MaVAdgnpRd
	0nYDyGogXzmCeH6+hdbUHtYxOQ==
X-Google-Smtp-Source: AGHT+IGA88a0tqs0ySvaw/VG+0LBbzKgphkn0HM/1po8Ivg4lljUAR77hvE9vQYlmeewmSTUzq4lbw==
X-Received: by 2002:a05:622a:182a:b0:423:abb1:c105 with SMTP id t42-20020a05622a182a00b00423abb1c105mr721645qtc.16.1701225892063;
        Tue, 28 Nov 2023 18:44:52 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:43c1:0:b0:668:d9c1:f577 with SMTP id o1-20020ad443c1000000b00668d9c1f577ls6847032qvs.0.-pod-prod-00-us;
 Tue, 28 Nov 2023 18:44:51 -0800 (PST)
X-Received: by 2002:a05:6214:5006:b0:67a:5f26:7017 with SMTP id jo6-20020a056214500600b0067a5f267017mr5742118qvb.9.1701225891350;
        Tue, 28 Nov 2023 18:44:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701225891; cv=none;
        d=google.com; s=arc-20160816;
        b=GE/PjPwzK6+CUCvOL29/5K/tKxJXK7twcS/PbFUI9rKAOjsH8OY6R2/1zN+dpZzpO0
         +j5wLaQgK/nhPZZIISswcxLn3RkCHjMlIOBluLUNhYDvFYQGQr9iK873uXD3feDVnKxU
         Xar+8GoB1qEINdxXj7KZpEmBX3B4Opyxkh8IbSj55/DY3wAxBz0UCGBV0VNLZ+uVqGA5
         uvOtBqZ4ZNU/PsrVOrSK589A0/l71tKRJnd/tY7XxYMtsYE9H48klbHNULeTcj8+exQp
         nMp4/x6/UT2Q+FpzmUKmQ1VH8UUR1lhsc1WYCErXuS5U2hYjspjECejN2uxxFF9jKu2W
         qdrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=HalzRuQaS0WSqen7GiE+Rm0XenK0HM1PkDi30QScX1o=;
        fh=DDJNEamPQgFR89dBvCYCwteVXgkmReHhgAbUtLN6M14=;
        b=IJ1+FLlTGWBDhEIWf1tJCbsMMAUlsmpWvtV3+9SrASHsxyi9FMUk1WWCiti0K4p1Zr
         D1jSYkNPAuPOa9H6EXW1kbbbGAOq3FNhLc5LXexkfEDRQ58mRVU+W4XkgfRSNztO3QYX
         czfmWclK751WKMMGEeQsxgE+oPtupG4OyIhujJ+pbxrlgwaGA1F5M0zcBk2BnYImiJso
         N0BQyXTJ2hLvys6N20dM96Q/m/CkkjmLdRifg1BRAhWeDDm0SzNZ2m9qVRFpPrKj0jIZ
         hAd8YRjIxobwkD6GYp8mpne4f2/5shjp66sDawOA2VDSP3dQZwcFnyOaKpszdjY/tz70
         NK6g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id w16-20020a0562140b3000b0067a219b9bdesi8926048qvj.511.2023.11.28.18.44.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 18:44:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-208-3jkRhDr6NKKyuh3piQfVIQ-1; Tue, 28 Nov 2023 21:44:48 -0500
X-MC-Unique: 3jkRhDr6NKKyuh3piQfVIQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B692101A54C
	for <blinux-list@gapps.redhat.com>; Wed, 29 Nov 2023 02:44:48 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 080A6492BEF; Wed, 29 Nov 2023 02:44:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 00A04492BE0
	for <blinux-list@redhat.com>; Wed, 29 Nov 2023 02:44:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CAAC83806076
	for <blinux-list@redhat.com>; Wed, 29 Nov 2023 02:44:47 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-17-c6b54ma4NrqAHRuDpphldQ-1; Tue,
 28 Nov 2023 21:44:46 -0500
X-MC-Unique: c6b54ma4NrqAHRuDpphldQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Sg3Z60JYZz1BmS;
	Tue, 28 Nov 2023 21:44:30 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Sg3Z602WKzcbc; Tue, 28 Nov 2023 21:44:29 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Sg3Z573zqzcbC;
	Tue, 28 Nov 2023 21:44:29 -0500 (EST)
Date: Tue, 28 Nov 2023 21:44:29 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Chevelle <cstrobel@crosslink.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Brave, or new browser projects and the command line?
In-Reply-To: <4345ec30-0e29-4dd3-a40d-e24dfbc41aa7@crosslink.net>
Message-ID: <caf93a24-fbca-ab07-f048-547176dca486@panix.com>
References: <Pine.LNX.4.64.2311281559340.3700734@users.shellworld.net> <aaa51ae5-e06a-499f-aefa-462bc17e1ac3@mail.com> <Pine.LNX.4.64.2311281652250.3701114@users.shellworld.net> <4345ec30-0e29-4dd3-a40d-e24dfbc41aa7@crosslink.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
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

browssh is a fail.  I tried it as did others and we found the interface
inaccessible since the project chose to implement g.u.i. controls and put
them into a terminal interface.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 28 Nov 2023, Chevelle wrote:

> =C2=A0=C2=A0=C2=A0 I've never tried it, but the browser called Browsh cla=
ims to support
> JavaScript.=C2=A0 It apparently uses a version of Firefox and renders the=
 output in
> text.
>
> https://www.brow.sh/
>
> On 11/28/2023 4:54 PM, Karen Lewellen wrote:
> > Yes, but that is my fault.
> > Fastmail wants to improve their web interface.
> > brave is one browser they list, but they realize gui browsers can prese=
nt
> > challenges.
> > So, I was wondering if there were additional tools that=C2=A0 like Elin=
ks can
> > when=C2=A0 compiled=C2=A0 blend the best of both worlds?
> >
> >
> >
> > On Tue, 28 Nov 2023, john doe wrote:
> >
> >> On 11/28/23 22:04, Karen Lewellen wrote:
> >>> =C2=A0Hi everyone,
> >>> =C2=A0what is feeding the question is that the development team at fa=
stmail is
> >>> =C2=A0rather stunned that they have dropped access so completely.
> >>> =C2=A0Future testing with lynx, links, and elinks, is=C2=A0 intended,=
 but they
> >>> =C2=A0reference a new browser, brave that I=C2=A0 have been asked to =
raise here.
> >>> =C2=A0does it come with Linux builds currently?
> >>
> >> https://brave.com/linux/
> >>
> >> Am I missunderstanding the point of this thread.
> >>
> >> --
> >> John Doe
> >>
> >> --
> >> You received this message because you are subscribed to the Google Gro=
ups
> >> "blinux-list@redhat.com" group.
> >> To unsubscribe from this group and stop receiving emails from it, send=
 an
> >> email to blinux-list+unsubscribe@redhat.com.
> >>
> >>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

