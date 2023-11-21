Return-Path: <blinux-list+bncBDYPVTOXSQEBBOER6CVAMGQE6PGVZLI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A517F2316
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 02:32:42 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-41cdc2cc0b4sf109165161cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 17:32:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700530361; cv=pass;
        d=google.com; s=arc-20160816;
        b=pup+tkpGN2bZFlDI+jA6V1H9gtPbbRDyH96WzyHNgTTWAi9BiNDj3Ywu9EPw4TFMSj
         b3bPddObzEb67J3ogm+1Ouo8X6lsGiMgRTk9Vd6zsGfknzPKe2shZQyex7OS0BsMeZAE
         V/jMvmHBwHo/XyFuxBJfKFo2auu/sBlig/veDttSO+r9nTiWAcHtInaz/DsB9GqRsFiX
         z5Kme6AKuceMw09a+7SPCPMt00T/WCG12RVt1QVJKPzzP056vT0+wgnH40uX6b/3DCqO
         +kOxIORBxivZ0Tx/APhq2v9lKWR3upjrzBGLGw5641mzsKA2dkFqD4b7zuomZROEPAxP
         iQIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to;
        bh=nCfyyqxw4os1Onq7OsrKklldxQJ5aIUQ98ZTgbJYjfg=;
        fh=Z4Q51GstKj55I6NGtBwpPq6NC87XCjnJQqnpnOkK24s=;
        b=Jb7FDC2WzmLxpoOIT+aFJdMNb+30QoKDYmoR+FYoAlOprfIChVvih4ATcKZ1jEJdE1
         iDKm0nzVJ8w1Fpqrmmggiz0oBltxg8u/0rH3YGIHacwR3Irrn9jy0kl/chjZh3spaqJf
         WKnW4EX6Qb6aqOiRKEj2xDBAIO+4sop5D7DTLtRmFRM8NJFKJp+sLcjI8BoZ4wbtqllJ
         19/d8GbGM3F7DKshIHmcig5A06HkhqVGAQbno9FCg7QotqazgPpCiOOP7cft1yLMtT9m
         Z9rYLQxRXApjoe/EL7RwUZlWadU8RY4oGRTbI7V6F+PR/Hoo3pouzXwTj9C6rHluJG5p
         HuCA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700530361; x=1701135161;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nCfyyqxw4os1Onq7OsrKklldxQJ5aIUQ98ZTgbJYjfg=;
        b=wuWchlPaw1JK9MUvQ5u4eMCa4uOf3A9QdwKu+UGO4hD9PcKBOhMyLwK1YTwKbllEv6
         d+qCu4A963x5yM0EQNpgG3E5wyXyT+CdSQ/2Ka/ReNRCGF/RWAnW5dFbkXwmIERT4coL
         sKFGiAi05zJRR3GK8gj5AkbWX6SgkAF/zmt+AwPNLt+dCl1a2RfsJw+zjZd1vxHbBdYj
         dvbEtDmnfRGyOMzdUTtgYkVZOIiTSahrw7Ds7IJXlZ+0WMb/Ksft1blc50qV8m9LtMPO
         663uOz5i64En/nT2P4XoG9F//YhQG+pdWL7+rE3PtEYXrjsdoB+xJbz11tVsLlG8NLr4
         3ZqA==
X-Gm-Message-State: AOJu0Yyu9oFzLtoLUJhOF1chjdXEJSqY+smUWPcwN0VGl+0jzcHKK4eN
	VtJEwU48I0U82/zWgw5ymKmIyg==
X-Google-Smtp-Source: AGHT+IFxEq20KWfVnDAHYAZNXVUU530MO9iiyG+OoBBJJK9OE2nWHPFaRv3LeUwdnj+qx7RnRLkfzg==
X-Received: by 2002:ac8:7d0f:0:b0:410:92ca:3dcd with SMTP id g15-20020ac87d0f000000b0041092ca3dcdmr2363869qtb.9.1700530361094;
        Mon, 20 Nov 2023 17:32:41 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:4106:b0:423:707e:9eb with SMTP id
 cc6-20020a05622a410600b00423707e09ebls209171qtb.0.-pod-prod-00-us; Mon, 20
 Nov 2023 17:32:40 -0800 (PST)
X-Received: by 2002:a05:622a:6a8d:b0:423:6dbb:eeee with SMTP id ih13-20020a05622a6a8d00b004236dbbeeeemr1520309qtb.0.1700530360413;
        Mon, 20 Nov 2023 17:32:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700530360; cv=none;
        d=google.com; s=arc-20160816;
        b=QIcXXyrH78ccoFJkqvQuGYzSLnZ7OAUZ5pZLw5Ox9WB6uv4C5Tk7bhpzZlaHGOlDI3
         gu1XxAUKPuXZoNv3P/ScDsigZmRXWsWIHjcfDXvHloTNsmFGEpxvwlBnj2NEKRBTeA46
         bp98QtOb4690Z/rwvPhQH2elP87ujrVHnt6qKwzhqZxavj7eEC6TZLYgqmwy8aarb+pS
         3GphlSRyOomzY0r+grxmuKkhGjaM5OfVNQuvRmWv4bKjqgXCu3IQLDiXRxyb6niKar27
         JLFvhlLOlLVmoct674JKWfhfvBOnhNquu8oZGZxB6kZ9GB4yHnDuhZscgOQkyrsVAPm7
         c9hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=v07Y3G1md6KWxK+Rdk4TIwnQMP9lc4FWxJ8IknF+qBs=;
        fh=Z4Q51GstKj55I6NGtBwpPq6NC87XCjnJQqnpnOkK24s=;
        b=BT4TsZkEyJOWcKQZXgcgREo2ciAHDLoNPdSUsYkTlHG2kl6wH5E1wwMJYMwlCGOAuk
         uyLppdcsz01IrGMCmkOXbIzUfcCzDjhNeXMyLpgpkbtWeXqlqi/Cwrc947oWO0OI4cAa
         ewR+6JziJwo8rSeFtA79EMtilhma4ESrV3x8ZHIwiQtvcfvwEStAWQ8Cof4Cx5sV1p/t
         Iq61Hyzaa6LLY8BTThiZp8ADFa69IWVYFz8rRVuFalUCumhrLKIgthgKBoHgHz4iTXvF
         y/hZUik6G8vHolkV+oOYXpMdvAuILpqB5nAp1DaJEa5QVgCnEYoTzeqd6pXyTtbDra+C
         BPXg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id bv9-20020a05622a0a0900b004236d309e6csi891642qtb.701.2023.11.20.17.32.40
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 17:32:40 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-499-G8qEeVcpN7ee5r-imQ6x_Q-1; Mon,
 20 Nov 2023 20:32:39 -0500
X-MC-Unique: G8qEeVcpN7ee5r-imQ6x_Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 891972825E8B
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 01:32:38 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 85C4D285C; Tue, 21 Nov 2023 01:32:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7868736E2
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 01:32:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 40BE12825E8B
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 01:32:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-106-7fI-eJ8DOOyiUE9GgT5E4g-1; Mon,
 20 Nov 2023 20:32:29 -0500
X-MC-Unique: 7fI-eJ8DOOyiUE9GgT5E4g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SZ6Lj2pJYz48B6;
	Mon, 20 Nov 2023 20:32:29 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SZ6Lj2ZTJzcbc; Mon, 20 Nov 2023 20:32:29 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SZ6Lj2VFKzcbC;
	Mon, 20 Nov 2023 20:32:29 -0500 (EST)
Date: Mon, 20 Nov 2023 20:32:29 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Ishe Chinyoka <chinyoka.consultant@yahoo.com>, 
    "Jason J.G. White" <jason@jasonjgw.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <Pine.LNX.4.64.2311202021350.3564917@users.shellworld.net>
Message-ID: <f2f8c94f-1dd1-3d48-0878-b0c31abc62ee@panix.com>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net> <7d33104a-9bdf-4435-9e11-6e0158e2ef8e@jasonjgw.net> <Pine.LNX.4.64.2311201757570.3563251@users.shellworld.net> <87y1esexx0.fsf@programming.brainpower.africa> <f535aa18-d83a-637d-4fc6-298db97b360f@panix.com>
 <Pine.LNX.4.64.2311202021350.3564917@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
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

It's a prompt notification gmail sends you each time you log on and it has
a yes and no button hitting the yes button gets you access to your
account.
Two factor authentication has been cracked regularly by the bad actors on
the internet.  I think it was stormdragon2976 that wrote fleacollar.sh and
I have what's probably an outdated copy of it around here somewhere.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Mon, 20 Nov 2023, Karen Lewellen wrote:

> fleacollar? laughs!
> seriously,  unless that cell phone process is voice only, that door is a
> closed one, if it has to be done often.
> When I lost access to my research gmail account lewellen.kd@gmail.com, I =
set
> up mail forwarding.  only to have items flagged as spam that I could not,
> still cannot reach.
> For the inbox I lost access to  this morning, my need is greater, access =
to
> its contents for the files  stored there.
> lost that with the mail forwarding door as well.
> Kare
>
>
> On Mon, 20 Nov 2023, Jude DaShiell wrote:
>
> > Gmail always has AllMail which is everything that comes at anyone in gm=
ail
> > and everything that goes out to everyone in gmail, the inbox and all ot=
her
> > labels are subsets of AllMail.
> > For would-be mutt users, a script found in some versions of mutt is cal=
led
> > fleacollar.sh intended to make proper setup of mutt less pain-filled.
> > If use of gmail is a must have, you'll need to enable two factor
> > authentication which means you need to provide your cell phone number f=
or
> > two factor authentication and then generate an app-password to use it.
> >
> > Another alternative would be to log into your google account and arrang=
e
> > to have everything forwarded to a different email address off gmail in
> > some future date.  This way for the stuff coming at you you'd never nee=
d
> > to touch gmail again.
> > Pre-existing content of AllMail could be pulled onto that other email
> > address with offline-imap.
> >
> >
> > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > order." Ed Howdershelt 1940.
> >
> > On Tue, 21 Nov 2023, 'Ishe Chinyoka' via blinux-list@redhat.com wrote:
> >
> >> Hi,
> >>
> >> I use mutt and gmail. What I can say is that, first you need to enable
> >> two-factor on your Gmail account. Then, second, you have to generate a=
n
> >> app password for mutt. Having copied the generated password, you have =
to
> >> set up both an Imap and msmtp utilities such as offlineimap for fetchi=
ng
> >> the mail, and msmtp for sending the mail. Of course, I understand mutt
> >> can handle both these operations, so you can set up in the .muttrc, bu=
t
> >> as for me I use other external programmes for doing just that.
> >>
> >> What I did was to set up the ~/.netrc file where I stored my login
> >> credentials so both offlineimap and msmtp use this .netrc to read the
> >> gmail app password.
> >>
> >> As for mutt accessibility, as a text mail handler, it is just fine. Yo=
u
> >> can use vim for composing your messages.
> >>
> >> Anyway, mutt has many configuration items. The mutt manual is detailed
> >> in how each of these settings affect the behaviour of mutt itself. I
> >> hope others can chip in. But I just wanted to help on how I set up mut=
t
> >> with gmail on my machine.
> >>
> >> Be blessed,
> >>
> >>
> >> Ishe
> >>
> >>
> >>
> >>
> >>
> >> Karen Lewellen <klewellen@shellworld.net> writes:
> >>
> >>> Hi,
> >>> my problem though is that I need access to the inbox contents entirel=
y,
> >>> not just to forward.
> >>> The Debian list  is currently discussing things like mutt with gmail,=
 and
> >>> imap as an alternative.
> >>> Apparently this bypasses the security problems with gmail in general?
> >>> And yes, I send from it too..agree that hosting your own mail has
> >>> positives.
> >>>
> >>> Thanks,
> >>> Karen
> >>>
> >>>
> >>>
> >>> On Mon, 20 Nov 2023, Jason J.G. White wrote:
> >>>
> >>>>
> >>>> On 20/11/23 17:30, Karen Lewellen wrote:
> >>>>>  Anyone use=C2=A0 mutt that can lend documentation, or a hand?
> >>>>>
> >>>> I'm familiar with Mutt, but not with using it with Gmail. In particu=
lar,
> >>>> it
> >>>> is my understanding that authentication is more complicated now than=
 it
> >>>> used
> >>>> to be, due to Google's security policies.
> >>>>
> >>>> This article seems to be a reasonably up to date starting point:
> >>>> https://www.thetechedvocate.org/how-to-install-and-configure-mutt-wi=
th-gmail-on-linux/
> >>>>
> >>>> I have a GMail account, but it's configured to forward everything to=
 one
> >>>> of
> >>>> my "real" e-mail accounts, and I don't use it to send messages. My M=
utt
> >>>> configuration is et up to work with mail on my own server.
> >>>>
> >>>>
> >>
> >>
> >
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

