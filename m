Return-Path: <blinux-list+bncBCVPTHE7K4IKFOPTXEDBUBB5GKU5K@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FA99D2E34
	for <lists+blinux-list@lfdr.de>; Tue, 19 Nov 2024 19:44:52 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d4030920f2sf63941146d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 19 Nov 2024 10:44:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732041891; cv=pass;
        d=google.com; s=arc-20240605;
        b=CiwJewUH7w90Nr/zNzWjzeklMU84JUgs5Q15cWvCFiUdvD6V0QDTuOLPDL+jm8P4hy
         +lcrzj2Dpq2y2nZz8XezdKEq1sk2cMuPcXHOVIarlMQb4W9yEI0COEYaWUzE+4qG+Nbn
         mfLRpBcDCBIAIKaw/IzroAgLkpzAVf5hcscU8EmORxwmS2XAH9/mKCLymmOKDiy0huXa
         axJ7WBbGEIQ8rSU5LI8AdQsqmTmQqOhLG2gRPOTzATl8qdBcG6xDNgZrJQYQsGjYsSC1
         LTprqnHQ91JH36DExuCT9FRi0mOrK+zjk2URBb82P+LDN6Lu4iTs/A85NJ9EMkEiStJN
         QgZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=uDT316srUovsvz84NFilKy2vMQMZBEXigrL/Xvj5TUk=;
        fh=VkyYnVwQ9HZcqpkAxKZxTp5W773cp2ZmSmrD+P5ymqw=;
        b=dd8Bdt3xHCrhkaDVz4gqlM4iD2Wc2hi5Hwj7IZjBrYSUZoYw3glGiDdyLpibMqFK1B
         z8JgtXAP7pIXNrUg1IKw5vKIiK4IVC+rIbw6tI3iQ2YKI4fnKAi0RO0Ol1Fj+tVUTCMW
         zA7CimczbgSlotj3ckgrhc3EMLVLTwT2JQjdbe2a1y8SDCH28QqCNo46Ko5hIpgS6osR
         WOLdBw26Aj6nDwl5DF39OTcojbh08VLmSYLkDg5IegryDgDxV+zZHQyBZh7W5+OoQ+rN
         aTqqZi22Y9B+h6/9+6Cbo4QxXxpIBq/FhUo+vidF+DYibg0JMUouLYEoP41zm2oNfA1H
         xxfA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732041891; x=1732646691;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uDT316srUovsvz84NFilKy2vMQMZBEXigrL/Xvj5TUk=;
        b=Gpyrc43F8vJeC2iBH/hcKBb1lQPAOhOFy41HhUo+AfEvnVeS7PQOJGhfVzQU6/h/li
         MeWsw/isXxWUIvDEk+WMPOirYvWyX1nKk2gqS90ZmaV2XOQZTkOfupA5l2NuPTMW4jkC
         DLN1LDvbMeV9BaDHmfUU2aYKiqtkPHpodvye0a4JNYfCEiRdJxDHKKUEtZ/fFba+A/6B
         +flllankDCl1YhS+WpkiQdS/8gAbm401vgSOyPUtqaM9xe9ak8N1aSKFjY2658zNlbWa
         0El0hdMQpZNKCjvxnzd9ENAJwOVIje7LzZ52jFgU1Ed79f3vDlEk6zIiD34H9WnFk4RE
         r38Q==
X-Forwarded-Encrypted: i=2; AJvYcCVE9MAWqOLSWk+tlUGvRJtA+ZkGEC7jJ5tLJ7o6qJYU1fKRsL0Ik/X6wxKOTX3eu+Zhq9978w==@lfdr.de
X-Gm-Message-State: AOJu0YxF0es9PinLRCf18TZTZFbYwTzb04aDT7ITTUu3CKDIaP0bbtg/
	WHNp5/EuOTK+fdHgWdZ5xZicnbtWEd8p133NW5h2XQh++eOuMtMF9nqTO425qzI=
X-Google-Smtp-Source: AGHT+IHyJqX9lGsSFWUs3RvwsxF4NfVBgIqsjgrMgUxLsrN7DX//pVZo8M5cQpjzLARg+r5u6iu8Hg==
X-Received: by 2002:a05:6214:5d90:b0:6cb:eb51:a26a with SMTP id 6a1803df08f44-6d3fb8afa1fmr229741726d6.47.1732041891063;
        Tue, 19 Nov 2024 10:44:51 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2509:b0:6bd:735f:a70e with SMTP id
 6a1803df08f44-6d40da69f75ls25611466d6.0.-pod-prod-06-us; Tue, 19 Nov 2024
 10:44:49 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVLSHB0YphHgV6blkKZFN+TJ6qeayPOw4nbOyeueZlZI6m1L2gChVRywptIKgXMF/CoF8jIrj3vDEIKEQ==@gapps.redhat.com
X-Received: by 2002:a05:6102:1590:b0:4a3:cb2b:9745 with SMTP id ada2fe7eead31-4adaf5db902mr171567137.22.1732041889770;
        Tue, 19 Nov 2024 10:44:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732041889; cv=none;
        d=google.com; s=arc-20240605;
        b=HixZHU7aOok73O3KFCqje4avnroLqckgn5RuKTfqYG0XPhpGegq6bGrlb3K9o0MV1/
         k5+UHDr9SLJVDJN3mdyufb4hGT/xCDSzE1qeZbvAtXBPbmVt26G44Pt0NZRsa3osuL86
         3S0sIww3SYwOw405M9JAJQC3rxejCpwcWx37XvncXDNUoTGHH5MpkfZBv1ybbJado97n
         /puxKCpkKsofNizRuzpfCd3MIIyorUeOZHGJ6UVEx1BDyl99i2z0v2yYvEHUgewl2oQr
         n5bWoa9rPOZKxXhXk+J1pQvCDu1bF4jiruvyu+3g58plLVclwYsBB/Sp+ATBlprAUD4B
         rj4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=uDT316srUovsvz84NFilKy2vMQMZBEXigrL/Xvj5TUk=;
        fh=gmZC7ZMrQC/Gponpur3xFGLdzPODy6T5Eb1VYJrQj1g=;
        b=Rt4tB6MokQ48N+FtEtVwoJmyWxarI/mFCaGSh5reP6OzqWwJfNcIG+fzxQ9+2DbqEx
         MUNu7+4IrbhNCpeYTzGhG51FAbGJjDMIEtV+jKj/P/nRAz0qs5gclcuW3Q/dWW3p/RnN
         ezanxoz+cg+q6Dv/F1u6z0R27gHfLIE/WqzMvycVtdZtjc14AuR5O5DeRnkPPIgF9d8b
         ordH5E5mDDevtbrb3Fg23eNRAHMIhpkOORlbrbpniX2KmG8E9n+xN2MlxNq1SMs3tMLD
         uDFR6QujK3JcB+hXUB8YPy5RWWVbdiDaiobeZ3XWbIoV5C399Af8Rt5ELxawVHICIGB/
         HKxg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id ada2fe7eead31-4ad646f609bsi2945769137.84.2024.11.19.10.44.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Nov 2024 10:44:49 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-39-OWVsSAD4NgShQQlv9FIeqg-1; Tue,
 19 Nov 2024 13:44:46 -0500
X-MC-Unique: OWVsSAD4NgShQQlv9FIeqg-1
X-Mimecast-MFC-AGG-ID: OWVsSAD4NgShQQlv9FIeqg
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B146C1955EE7
	for <blinux-list@gapps.redhat.com>; Tue, 19 Nov 2024 18:44:45 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id ABDDF1955F43; Tue, 19 Nov 2024 18:44:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A93CB1956052
	for <blinux-list@redhat.com>; Tue, 19 Nov 2024 18:44:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 205F719541BE
	for <blinux-list@redhat.com>; Tue, 19 Nov 2024 18:44:45 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-332-naxUXlPyPmiI-sGBUTMIcQ-1;
 Tue, 19 Nov 2024 13:44:42 -0500
X-MC-Unique: naxUXlPyPmiI-sGBUTMIcQ-1
X-Mimecast-MFC-AGG-ID: naxUXlPyPmiI-sGBUTMIcQ
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 854DE40508;
	Tue, 19 Nov 2024 13:44:41 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 3A80A1001C1; Tue, 19 Nov 2024 13:44:41 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 381A4100090;
	Tue, 19 Nov 2024 13:44:41 -0500 (EST)
Date: Tue, 19 Nov 2024 13:44:41 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Kyle <kyle@gmx.it>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Piper as an option in Linux distributions?
In-Reply-To: <4a02e3e2-08e8-4643-9795-64c7ec99b752@gmx.it>
Message-ID: <Pine.LNX.4.64.2411191341100.406461@users.shellworld.net>
References: <Pine.LNX.4.64.2411181752460.395171@users.shellworld.net>
 <1734eadc-f27b-2f63-67b8-1a5aab1170cd@hubert-humphrey.com>
 <Pine.LNX.4.64.2411182352010.398469@users.shellworld.net>
 <4a02e3e2-08e8-4643-9795-64c7ec99b752@gmx.it>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: fOi4ZqVlmetrgXe2NiTWTr_ubj5ra2sK7MO-DYKOQZo_1732041881
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 3hNrVcngwqOon7tQGBCyJSBJbMKkgxRp7SMow_DrwD0_1732041885
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1266663360-1732041881=:406461"
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-1266663360-1732041881=:406461
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Kyle, others.
I am going to place mateusz  reply below.
First, not only does he not use a screen reader, he has practically no=20
contact  with adaptive technology in general, let alone end users.=20
Forgive his everyone sharing a diagnosis are interchangeable statement.=20
His goals are kind.
From freedos-user@lists.sourceforge.net Tue Nov 19 10:26:36 2024
Date: Tue, 19 Nov 2024 16:24:49 +0100
From: Mateusz Viste via Freedos-user <freedos-user@lists.sourceforge.net>
To: freedos-user@lists.sourceforge.net
Cc: Mateusz Viste <mateusz@viste.fr>
Subject: Re: [Freedos-user] Accessibility question.

Hi Karen,
I had described my setup already a couple of weeks ago I think. I used my
BNS emulator, emubns, and connected it to a virtual machine running SvarDOS=
.
The SvarDOS system has a screen reader that outputs speech in the BNS
format. This BNS speech is received by emubns, who relays it for actual
speech generation to Piper. All this runs virtualized at this moment, so it
is likely not a setup that is desirable for blind people. However, the exac=
t
same result can be obtained by running emubns and Piper on a Raspberry Pi.
In such setup, the DOS system would run on a hardware PC and output speech
to the Raspberry Pi connected via a standard serial cable. In essence the
Raspberry Pi would act as a dumb speech generator. This, I believe, would b=
e
much more user-friendly since no exotic configuration would be required
other than flashing the Raspberry Pi with a suitable image. I plan to
prepare such image, but have yet to find the time to look into this. Not
something very high on my list of priorities since I am almost sure that I
would be the only user of such system, but still something I'd like to get
done eventually.

I believe you use a hardware DECTalk speech generator to make your DOS talk=
.
To make it simpler to understand, just imagine that instead of this DECTalk
device there is a Raspberry Pi box. The RPi would run Linux, emubns and
piper, but all this would be hidden from "normal" users, who would consider
the Raspberry as a black box that talks when connected to a DOS PC.

Mateusz




On 19/11/2024 06:18, Karen Lewellen wrote:
> Hi Mateusz,
> Finally had a moment to=C2=A0 check out your piper=C2=A0 in DOS sample.
> If I am forthright, that was frankly stunning.
> granted, I imagine many factors impacted that sound quality, but I have
> questions=C2=A0 about your process, both how it differs=C2=A0 because Pip=
er is=C2=A0
> in Linux <what does that mean exactly?> and what you used for the output
> for that sample,=C2=A0 sound card for example.
> There is a discussion of Piper for Linux accessibility,=C2=A0 one thing
> profoundly=C2=A0 missing, speaking personally, is the ease of adjusting b=
asic
> things like rate, pitch, inflection, my understanding from command line
> Linux users is that those options are not solid.=C2=A0 certainly not like=
 the
> many DOS screen reader packages.
> before I get exacted about a possible safe for my use tts, I am intereste=
d
> in your=C2=A0 process?
> Thanks,
> Karen
>=20
>=20
>=20
> On Wed, 16 Oct 2024, Mateusz Viste via Freedos-user wrote:
>=20
> > On 15/10/2024 17:12, Karen Lewellen via Freedos-user wrote:
> > > =C2=A0Other factor speaking personally with espeak is the largely poo=
r
> > > speech
> > > =C2=A0quality.
> >
> > I experimented a bit with emubns today. Ended up using "piper" instead
> > of espeak. The speech quality is outstanding now, almost lifelike. I wa=
s
> > able to install SvarDOS using only my ears and fingers and with the
> > natural voice generated by Piper it was almost a pleasant experience.
> > Piper is Linux-only, but that's not an issue in the context of running
> > emubns as a DOS-compatible hardware synthesizer on a Raspberry Pi.
> >
> > Another problem is that Provox pronounces every period, comma, colon an=
d
> > parenthesis, which becomes quickly annoying. Perhaps it can be
> > configured somehow, I have yet to find out. It's all new to me, I have
> > never used a screen reader before.
> >
> > > =C2=A0I have no idea what the pi would provide speech wise, nor the c=
ost
> > > factor.
> >
> > With piper integration the speech quality is excellent. The cost factor
> > is the cost of a Raspberry Pi 3 device and a serial-to-USB cable. That
> > is, in theory, because I did not test it on real hardware yet.
> >
> > Mateusz
> >
> >
> > _______________________________________________
> > Freedos-user mailing list
> > Freedos-user@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/freedos-user
> >



_______________________________________________
Freedos-user mailing list
Freedos-user@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/freedos-user

  thoughts?
Kare


On Tue, 19 Nov 2024, 'Kyle' via blinux-list@redhat.com wrote:

> I know of Pied and got it working here, but it assumes that the screen
> reader can talk through speech-dispatcher directly. What's more, it has
> a graphical interface, so choosing a voice wouldn't be as easy as a
> command. That said, if you can drop in a configuration file, it just may
> work without the graphical interface, although I don't have one to send
> along at this time, as I found it to be a bit funky with random letters
> and sometimes numbers. Even some words made it mumble at times, so I had
> to revert to DECTalk. Now if you don't mind RHVoice, it works with
> speech-dispatcher as well, in fact it ships with its own
> speech-dispatcher module. In either case, though it may not work with
> speakup, either RHVoice or Piper will in fact work with both TDSR and
> Fenrir in text mode, as well as Orca in graphical desktop mode.
>
>
> So someone got Provox talking with software speech in FreeDOS? I need to
> find out more about this. Gives me something else to play with over here.
>
> ~ Kyle
>
> To unsubscribe from this group and stop receiving emails from it, send an=
=20
> email to blinux-list+unsubscribe@redhat.com.
>
>
--1949452079-1266663360-1732041881=:406461--

