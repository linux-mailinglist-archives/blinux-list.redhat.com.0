Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 26ABB3E0AA2
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 00:58:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628117907;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bCOFHzvRcVq/L9sxxNqeb0CBJlIjfag83bnKjr1poio=;
	b=CCD1QOIxuI0nITctGbxEjLnpUwYrKMh3rzCr/ZTPYbCzzh6dVDsEtmCAjXQC6Ry/trfa5l
	CNf9NFNqyFAwkGfrB3r1G6hty6cCd1DLexjol5CNnhaZBSWTqQSrw7Oqomjh1cyhz2O0A1
	DB/B2t1tXEAxR7BwM/4F1dlnyI1DyYo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-557-6JINoQr8M5eRzYzke7PvTw-1; Wed, 04 Aug 2021 18:58:25 -0400
X-MC-Unique: 6JINoQr8M5eRzYzke7PvTw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73D1A801B3C;
	Wed,  4 Aug 2021 22:58:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF28E60C9F;
	Wed,  4 Aug 2021 22:58:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D3E704BB7C;
	Wed,  4 Aug 2021 22:58:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 174MwFqc015557 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 18:58:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9B5C7201FD0B; Wed,  4 Aug 2021 22:58:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 96367201FD0D
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 22:58:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4880D858EEC
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 22:58:09 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-217-sunRj--6P8qmb1IjuyeKkg-1; Wed, 04 Aug 2021 18:58:07 -0400
X-MC-Unique: sunRj--6P8qmb1IjuyeKkg-1
Received: by mail-wm1-f47.google.com with SMTP id
	e25-20020a05600c4b99b0290253418ba0fbso2402102wmp.1
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 15:58:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=7tLrLiCnwgN1Ntsi+OL5bEme3dv6/O/g103rMjEQA8U=;
	b=LPLJbKda+AMpEpbe8gLDT96TAq8Gw46h4Fa8BO3sLs/eJKKyX/GaKgyzWONsciw9Pd
	ZnntPLDdEyoyHgrlv2dOKHJoHmYV3/680wYwc239WTUTt9gRH58+wLnNO0g3IL+GaU3G
	OfltyyXfXzjrRYRPL+hx3KaxIS68qfZwYgjjIWusH1H2JQukYmflK6ZVKt1emcR4Hdma
	IO+QVxNeML2g3CmnZep+J95Wf2Ra2B4cOwdRibdDzAMdwDC4q4BklZwtlMEW7C0zIO1W
	5Ni7M0eOChw81x87HUSYYOE3uTxrC53QuZomWqFrox8S2WHzAlS+e/toWx+VU2msFp8s
	eTsA==
X-Gm-Message-State: AOAM53012HI/bNpJ3lnBZWaSJGlrLY/DgCk/ZPh7G3tM3Ye1w/lgfUP3
	XJWrjmB94TT6Xd8dvNDvw1cAYJbg28Jv8w==
X-Google-Smtp-Source: ABdhPJyRddz3oh4dHjdedEM/SBwCRBavK3Ho94HsO0qgsiu14iMWoqi+9aoxvRBxHCEubxnJyJeiBA==
X-Received: by 2002:a7b:cf12:: with SMTP id l18mr11872250wmg.130.1628117885733;
	Wed, 04 Aug 2021 15:58:05 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id
	i10sm7185206wmq.21.2021.08.04.15.58.05 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 04 Aug 2021 15:58:05 -0700 (PDT)
Subject: Re: Solus DE observations
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<09938f56-8ec8-a34b-65a3-9151aaab74b9@gmail.com>
	<EFCC025D-5C8B-4997-9BDC-D0243384A3D1@gmail.com>
	<alpine.NEB.2.23.451.2108041823280.8697@panix1.panix.com>
	<df6422c1-cf3e-2e3b-ffea-4afb43627a62@gmail.com>
	<229C49E8-4453-4759-A7DE-712BDD5AC3FD@gmail.com>
Message-ID: <f1f450f1-b1ef-84d0-a4d1-c7515d21b8ef@gmail.com>
Date: Wed, 4 Aug 2021 23:58:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <229C49E8-4453-4759-A7DE-712BDD5AC3FD@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

For audiogame-manager...


audiogame-manager -c


I have it working on Solus by instaling wine, winetricks, sox and dialog

That's literally all, and all are in the repos of Solus. So sudo eopkg 
install sox wine winetricks dialog

On 8/4/21 11:51 PM, Linux for blind general discussion wrote:
> Solus help center, is that on the solus page?
>
>> On Aug 4, 2021, at 5:44 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>
>> I've been able to play GUI games that were made to be accessible and run in GNU/Linux, such as 2MB MineRacer, and an old tomb raider thing.  Also, the user, Storm Dragon, has written what he calls his Audio Game Manager, which lets you play a bunch of old Windows games in the Linux gui, using wine and a bunch of helper scripts.  Getting that thing installed into Solus looks like it would be a huge challenge.  He basically wrote the thing for Arch and Slint; in the latter, the build process took a long time, and there were lots of instructions.
>>
>>
>> In a previous message, you wrote about keyboard shortcuts in Budgie?  Try the Solus help center; there's a small table of about 10.  One particular short cut, you asked about, is looking at your mounted drives.  That one is not there, because it's not in Budgie, rather, it's in the file manager.  If you start off, for instance, in your home folder, you can toggle various panes with f6.  One of these is like the "places" menu in something like Mate.  Your mounted volumes should show up there; hit up and down arrows to find them, and hit space on the one you want. You should get shifted into the content pane.
>>
>>
>>
>> HTH,
>>
>>
>>
>> Dave  Hunt
>>
>>
>>
>>
>> Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info
>>
>> On 8/4/21 6:26 PM, Linux for blind general discussion wrote:
>>> One good thing about this solus distro is that there's a games
>>> specializing distro.  What will be interesting will be to find out how
>>> many more g.u.i. games either become more accessible or become accessible
>>> users can play on solus.  Most of the g.u.i. games available for Linux
>>> have yet to get accessible unless huge changes have happened since I last
>>> checked out the scene.
>>>
>>>
>>> On Wed, 4 Aug 2021, Linux for blind general discussion wrote:
>>>
>>>> If I remember, it was the mate edition, about a year and a half ago.
>>>>
>>>>> On Aug 4, 2021, at 12:30 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>>>
>>>>> Installing Mint was exactly like installing Ubuntu, as far as I recall.  Maybe you grabbed the Cinnamon edition last time?
>>>>>
>>>>>
>>>>> Cheers,
>>>>>
>>>>>
>>>>> Dave  H.
>>>>>
>>>>>
>>>>>
>>>>> Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info
>>>>>
>>>>> On 8/4/21 7:05 AM, Linux for blind general discussion wrote:
>>>>>> How was linux mint and orca during installing?
>>>>>>
>>>>>>> On Aug 3, 2021, at 9:23 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>>>>>
>>>>>>> This message is coming from my Solus Mate installation.  Mate and the applications work as expected, with the exception of speech dispatcher.  All other audio sounds fine, but speech is a little choppy.  Also, I found that some packages aren't in the repos, namely LIOS and Chirp.  I don't know what the build experience is like in Solus, and have those packages in my Slint system. Speaking of Slint, have you considered it?
>>>>>>>
>>>>>>>
>>>>>>> I have used Linux Mint Mate edition, and find that the accessibility works fine in the apps and on the desktop and menus.  I find that I have to use flat review on Mint Mate's bottom panel, and the battery  charge indicator doesn't seem to refresh properly.
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> HTH,
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> Dave  H.
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> Sent with Thunderbird and Solus GNU/Linux.
>>>>>>>
>>>>>>> On 8/3/21 10:13 PM, Linux for blind general discussion wrote:
>>>>>>>> Dave, I have used gnome and mate with ubuntu.
>>>>>>>> I thought of linux mint, and tried it, but orca would not work.
>>>>>>>> Had you tried mint?
>>>>>>>> As to Solus, is that workable?
>>>>>>> _______________________________________________
>>>>>>> Blinux-list mailing list
>>>>>>> Blinux-list@redhat.com
>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>
>>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

