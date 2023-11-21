Return-Path: <blinux-list+bncBDYPVTOXSQEBB6MG6CVAMGQEHM2YYOA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA137F22E6
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 02:10:19 +0100 (CET)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-6d67876e3desf5828285a34.1
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 17:10:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700529018; cv=pass;
        d=google.com; s=arc-20160816;
        b=kWAUTGUIPzSiV9nvoZqKPxaWa3cWcVQQuzc8IxVz0R4wOXCHaqMfWYVqU0KZTkSaFo
         iEqZ/Ig5hZbLakyPQCOREG/Q/bwWK9ZHmL3M4AUw3N4X005oHlV/3ncZXW2H4zWrLoyk
         SGUk7KBQLwv76p+rFBTnhFXs3aXE/QqW5Sr0WUBJO0B66lpochvDChy/oKNOuUtNlf7I
         pFsjxmG+tB4/lFaGGORyhrFLj3/Uh3HoEyMQWdubtHwwUxZ70m5hRzg3Y4McLUXcgosO
         N+cub1k5VxB/MCzQmyEOStC22oWOw76eAg5o9vEn1ekz84MxpoPO+TRmyduEWyIhx8zx
         qSzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to;
        bh=KdtTlghng2qMQyPuNQ6T1R55QfYCfK/BdnoxeowrLMM=;
        fh=6TLUkd5Y0sDF2FHi3Z3T0wHdbfybnervtab8+BEuKV8=;
        b=DdvQa+ErPZIQh0l7/4yjrapBl05PK1amjQJ0+lm/Ca4cSKAuL3e9EvsyfX+AK99tew
         55IJllTja9XTKJZ3NzdpUM3q6W1aBv8YaFSgU+Vaqbm2PXmkPiRV5dGqHtJ88gp1v6/5
         t/K1jXOTJbF7BLG7gVT4864WClHWsIDZbO2+qfyWbBDLKOqAkpa/iz507VHa1QkiTG2O
         fx7wyUaq/JqoCa63eqJijhr42C9KIzQLS2uBUUc2nf643nTxwxy9ufDVr6wvewidoDI7
         a0DBVNv6Wnq9IdFoHNOznD3/ghbtMYuhvK/pK0eN6HQMFCPPZ9WbjbVpNWj7LDJHJIsL
         8JeA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700529018; x=1701133818;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KdtTlghng2qMQyPuNQ6T1R55QfYCfK/BdnoxeowrLMM=;
        b=dB0rw0sU/jBmoDiwJZwH+iRqSdtIOX6bzGttsSNWM07Sp8ccbZEkz9jVh2RvBAaVLW
         ZJsoTRGpNBXvz30KaQpO8OYEYeEI8ntFUyv2lvdBLBBZSa4cQAx73cJ3IleFdwloRy8J
         oovd8MaybFx4j7XS8Pad/mn0E84qmk64p5p98E/XNfuTsFIn8l5qojgRSTm9nNrrVz1Q
         lw1PYrEIifqM5DufJQhj4IAGnLU7UB+bYpFAsRirj1BoyYLxhW8e7Z/ozJOvAhcZ3iRf
         ouVckedQUTuYhmKPMAnFwZWAiHcr6YvVuHsQFuaDvIlKFzcCitTLi6nYwZPD/dSoClr0
         1TcA==
X-Gm-Message-State: AOJu0YxIf9YUaGO+lvduFQbnkwXTSpr7+DLyzSns8jz5YtkoPqR+H2en
	gO6oYkXlFBmLF14CX05x/Xn+0w==
X-Google-Smtp-Source: AGHT+IFUTyZ8vx4wtJt4YOKPxsMAAHQy0IHNfyeLil6Zo8lotOgraDn7wPaFHXpz3Ax8vojQlbpVuw==
X-Received: by 2002:a05:6870:fe85:b0:1f9:3690:c412 with SMTP id qm5-20020a056870fe8500b001f93690c412mr5758916oab.18.1700529017764;
        Mon, 20 Nov 2023 17:10:17 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:a70c:b0:1ef:391a:8ebd with SMTP id
 g12-20020a056870a70c00b001ef391a8ebdls801393oam.2.-pod-prod-03-us; Mon, 20
 Nov 2023 17:10:17 -0800 (PST)
X-Received: by 2002:a05:6358:709:b0:16b:9480:41c8 with SMTP id e9-20020a056358070900b0016b948041c8mr7313645rwj.1.1700529017151;
        Mon, 20 Nov 2023 17:10:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700529017; cv=none;
        d=google.com; s=arc-20160816;
        b=nvH/eQByJ+l2bC8HBhNj5W++pJEO+dT97C4Ka9mIRMfHkt1GKcv5lJCXIN8S7xknt7
         wn1GEqTVDIMOu5fgxZkpmyNQ+bWNueuDVx5XSajNzja0QTKiL8qi8At2bV+4yUAKABJ2
         heBf335bKrdACsDMiaEH0AAEGRl4vtVkoyOWEC9FQoDUUbkYXi/zn69ehE43uln0l6Kr
         SMOiwzmRcYrpIjeY0W7CBmyXAt65lCNS9OfBaRc5sN502Dz4hFmuE5UxfM2NSqYh74hO
         5C+aIeRJNyMp/EDTVTzI7wqzBg1RxJrRyP80tMAWDXdG+5BtbULdXKHFO9C1iuPXjSeU
         xJhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=Zel6C6noBk9MiMKX5hX3+4KyCeXE8ModyaDpzVdptik=;
        fh=6TLUkd5Y0sDF2FHi3Z3T0wHdbfybnervtab8+BEuKV8=;
        b=gUm7HbRYxGN7dL/qhkCVEK5cLzUthPbpoAdBD9c5pvPOdmKHtAcii3PFg0zLSQwWnN
         8vty/f/sVYMzg8gAihbbNtIiUULLBqU1a16YP8+pwIO+tzoY8gRH1DgTWmc6qEoNNPdH
         nCNq/J08YEQsdrONIa4hDWsi+pMKt8WL0oDz+1/T620wIVHxXIn6PQR6ljcMhtRuEp9/
         BR9dvhP8AUNzFPaHYhXTpFqe+RoVTLtP6R+a4AP7O3Wr5zpbM94/ZZ5KnJJBy59gjeYF
         YCz7RkLjkb5RqAq3QSXDDW8BILGOeC9iFxu84nSE9Zwu//IpqaJpFqvSU5Zf0Ui9uhAJ
         kspw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id u11-20020a05622a14cb00b00413691c1f3csi8127834qtx.290.2023.11.20.17.10.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 17:10:17 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-581-73mKd_DZNwiQbb5J7kdY5w-1; Mon, 20 Nov 2023 20:10:15 -0500
X-MC-Unique: 73mKd_DZNwiQbb5J7kdY5w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 36B9D811001
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 01:10:15 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 339C4502E; Tue, 21 Nov 2023 01:10:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C8D3502A
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 01:10:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03AFE3C0E476
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 01:10:15 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-618-Xr-nyPlqNBOR4YsTFk38mw-1; Mon,
 20 Nov 2023 20:10:12 -0500
X-MC-Unique: Xr-nyPlqNBOR4YsTFk38mw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SZ5s041Fhz48NV;
	Mon, 20 Nov 2023 20:10:12 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SZ5s03cGSzcbc; Mon, 20 Nov 2023 20:10:12 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SZ5s03VW5zcbP;
	Mon, 20 Nov 2023 20:10:12 -0500 (EST)
Date: Mon, 20 Nov 2023 20:10:12 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Ishe Chinyoka <chinyoka.consultant@yahoo.com>, 
    Karen Lewellen <klewellen@shellworld.net>, 
    "Jason J.G. White" <jason@jasonjgw.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <87y1esexx0.fsf@programming.brainpower.africa>
Message-ID: <f535aa18-d83a-637d-4fc6-298db97b360f@panix.com>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net> <7d33104a-9bdf-4435-9e11-6e0158e2ef8e@jasonjgw.net> <Pine.LNX.4.64.2311201757570.3563251@users.shellworld.net> <87y1esexx0.fsf@programming.brainpower.africa>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
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

Gmail always has AllMail which is everything that comes at anyone in gmail
and everything that goes out to everyone in gmail, the inbox and all other
labels are subsets of AllMail.
For would-be mutt users, a script found in some versions of mutt is called
fleacollar.sh intended to make proper setup of mutt less pain-filled.
If use of gmail is a must have, you'll need to enable two factor
authentication which means you need to provide your cell phone number for
two factor authentication and then generate an app-password to use it.

Another alternative would be to log into your google account and arrange
to have everything forwarded to a different email address off gmail in
some future date.  This way for the stuff coming at you you'd never need
to touch gmail again.
Pre-existing content of AllMail could be pulled onto that other email
address with offline-imap.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Tue, 21 Nov 2023, 'Ishe Chinyoka' via blinux-list@redhat.com wrote:

> Hi,
>
> I use mutt and gmail. What I can say is that, first you need to enable
> two-factor on your Gmail account. Then, second, you have to generate an
> app password for mutt. Having copied the generated password, you have to
> set up both an Imap and msmtp utilities such as offlineimap for fetching
> the mail, and msmtp for sending the mail. Of course, I understand mutt
> can handle both these operations, so you can set up in the .muttrc, but
> as for me I use other external programmes for doing just that.
>
> What I did was to set up the ~/.netrc file where I stored my login
> credentials so both offlineimap and msmtp use this .netrc to read the
> gmail app password.
>
> As for mutt accessibility, as a text mail handler, it is just fine. You
> can use vim for composing your messages.
>
> Anyway, mutt has many configuration items. The mutt manual is detailed
> in how each of these settings affect the behaviour of mutt itself. I
> hope others can chip in. But I just wanted to help on how I set up mutt
> with gmail on my machine.
>
> Be blessed,
>
>
> Ishe
>
>
>
>
>
> Karen Lewellen <klewellen@shellworld.net> writes:
>
> > Hi,
> > my problem though is that I need access to the inbox contents entirely,
> > not just to forward.
> > The Debian list  is currently discussing things like mutt with gmail, a=
nd
> > imap as an alternative.
> > Apparently this bypasses the security problems with gmail in general?
> > And yes, I send from it too..agree that hosting your own mail has
> > positives.
> >
> > Thanks,
> > Karen
> >
> >
> >
> > On Mon, 20 Nov 2023, Jason J.G. White wrote:
> >
> >>
> >> On 20/11/23 17:30, Karen Lewellen wrote:
> >>>  Anyone use=C2=A0 mutt that can lend documentation, or a hand?
> >>>
> >> I'm familiar with Mutt, but not with using it with Gmail. In particula=
r, it
> >> is my understanding that authentication is more complicated now than i=
t used
> >> to be, due to Google's security policies.
> >>
> >> This article seems to be a reasonably up to date starting point:
> >> https://www.thetechedvocate.org/how-to-install-and-configure-mutt-with=
-gmail-on-linux/
> >>
> >> I have a GMail account, but it's configured to forward everything to o=
ne of
> >> my "real" e-mail accounts, and I don't use it to send messages. My Mut=
t
> >> configuration is et up to work with mail on my own server.
> >>
> >>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

