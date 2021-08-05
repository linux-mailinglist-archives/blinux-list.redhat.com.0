Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CFCF23E0BEF
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 03:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628125544;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SHtZnmvixMvglXvuvGWQOatAjMaOjbmX0DoXICBpvGs=;
	b=At+vuzXabWbzdMR+UrLDfyiYv3NqJu1+0bKxQzgCtzeK04LZlC83zwX/sQXpGAqugXkRt1
	VT+7t01mPc+zV3XsObvxRc/bChsPD1rrEtpfmIOesR5wAWGv71xARY09+qGpmA2d0EF3aZ
	W+AKiyqs0nzSHbCZjXiHHGlWkiIe7iE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-125-hZeumf80M6WkM7LYoo5ECw-1; Wed, 04 Aug 2021 21:05:42 -0400
X-MC-Unique: hZeumf80M6WkM7LYoo5ECw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE958802E67;
	Thu,  5 Aug 2021 01:05:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D849C19CBA;
	Thu,  5 Aug 2021 01:05:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 08E9B4A7C8;
	Thu,  5 Aug 2021 01:05:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17515Yn4029937 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 21:05:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4410A10CD845; Thu,  5 Aug 2021 01:05:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CF2210CD859
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 01:05:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C02128007B1
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 01:05:30 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-78-o_4MgUhrNeuAybC2kySbRw-1; Wed, 04 Aug 2021 21:05:28 -0400
X-MC-Unique: o_4MgUhrNeuAybC2kySbRw-1
Received: by mail-qk1-f169.google.com with SMTP id w197so3372847qkb.1
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 18:05:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=Xk5OUkswaRi+Jdgqi19URwUD12sIORHmmUkDzpznNy8=;
	b=MK1AD+1gFStFp5hkg3odiRAFKywgt+6o5Ayc65CdmmbqRlhmocMQM4OBUmLhz2rN3L
	kIw8OiuQkmGwVSH+z5jh4POYT5U+vewcqloKiNyRgs/UAi+S1k/UrGB+msfTsKEGa2FP
	5rHxyS6g4fM7XDtuYLxPdLjM1gkLXcXJMga+qD/i2GgKHYzbZinwUdHudPE856r5HfNU
	uuqwSIOFiQtSsnLt5qpCyx5iPEsKJhqlaGcz1n8gcWUa44o/iXNhS+JpWndfI8XU7G9w
	GBIdM+7XTpQsWu68VtgK1XoXz4cZOE33nWbtO72gpt+Y1WvwFeJudNE68h3GhnhAOVTR
	wn4g==
X-Gm-Message-State: AOAM533nR0sgRG88RcctGznDaTn9XZq/InBi7ufUTUaG/LlPlxI9+lRs
	H7/Vvnr5U/ji8xVze6Ny/7WWKTJ8ZAsUCw==
X-Google-Smtp-Source: ABdhPJzAWec7mEHJ0iDrHupWF7+N4fPF+/jkp5kSrYWctQmB1D1Ax9mrLnnYQWxIaiMtvvsXzowhuQ==
X-Received: by 2002:a05:620a:39e:: with SMTP id
	q30mr2361976qkm.4.1628125527921; 
	Wed, 04 Aug 2021 18:05:27 -0700 (PDT)
Received: from smtpclient.apple ([2600:1702:20f0:4420:cd23:629a:4d8e:fc66])
	by smtp.gmail.com with ESMTPSA id g23sm485808qtq.9.2021.08.04.18.05.27
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Aug 2021 18:05:27 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Solus DE observations
Date: Wed, 4 Aug 2021 21:05:26 -0400
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
	<f1f450f1-b1ef-84d0-a4d1-c7515d21b8ef@gmail.com>
To: Blind Linux <blinux-list@redhat.com>
In-Reply-To: <f1f450f1-b1ef-84d0-a4d1-c7515d21b8ef@gmail.com>
Message-Id: <907EC549-F01A-4345-ABFE-67B06CF6949A@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17515Yn4029937
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So, how do you check for updates on the system using a terminal?  Sudo eopkg install package would install a package, but would something like sudo eopkg upgrade work or what?  I know you can go through software center, but would like to know how to do this in a terminal.  I could not find anything on the web page.

Matthew



> On Aug 4, 2021, at 6:58 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> For audiogame-manager...
> 
> 
> audiogame-manager -c
> 
> 
> I have it working on Solus by instaling wine, winetricks, sox and dialog
> 
> That's literally all, and all are in the repos of Solus. So sudo eopkg install sox wine winetricks dialog
> 
> On 8/4/21 11:51 PM, Linux for blind general discussion wrote:
>> Solus help center, is that on the solus page?
>> 
>>> On Aug 4, 2021, at 5:44 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>> 
>>> I've been able to play GUI games that were made to be accessible and run in GNU/Linux, such as 2MB MineRacer, and an old tomb raider thing.  Also, the user, Storm Dragon, has written what he calls his Audio Game Manager, which lets you play a bunch of old Windows games in the Linux gui, using wine and a bunch of helper scripts.  Getting that thing installed into Solus looks like it would be a huge challenge.  He basically wrote the thing for Arch and Slint; in the latter, the build process took a long time, and there were lots of instructions.
>>> 
>>> 
>>> In a previous message, you wrote about keyboard shortcuts in Budgie?  Try the Solus help center; there's a small table of about 10.  One particular short cut, you asked about, is looking at your mounted drives.  That one is not there, because it's not in Budgie, rather, it's in the file manager.  If you start off, for instance, in your home folder, you can toggle various panes with f6.  One of these is like the "places" menu in something like Mate.  Your mounted volumes should show up there; hit up and down arrows to find them, and hit space on the one you want. You should get shifted into the content pane.
>>> 
>>> 
>>> 
>>> HTH,
>>> 
>>> 
>>> 
>>> Dave  Hunt
>>> 
>>> 
>>> 
>>> 
>>> Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info
>>> 
>>> On 8/4/21 6:26 PM, Linux for blind general discussion wrote:
>>>> One good thing about this solus distro is that there's a games
>>>> specializing distro.  What will be interesting will be to find out how
>>>> many more g.u.i. games either become more accessible or become accessible
>>>> users can play on solus.  Most of the g.u.i. games available for Linux
>>>> have yet to get accessible unless huge changes have happened since I last
>>>> checked out the scene.
>>>> 
>>>> 
>>>> On Wed, 4 Aug 2021, Linux for blind general discussion wrote:
>>>> 
>>>>> If I remember, it was the mate edition, about a year and a half ago.
>>>>> 
>>>>>> On Aug 4, 2021, at 12:30 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>>>> 
>>>>>> Installing Mint was exactly like installing Ubuntu, as far as I recall.  Maybe you grabbed the Cinnamon edition last time?
>>>>>> 
>>>>>> 
>>>>>> Cheers,
>>>>>> 
>>>>>> 
>>>>>> Dave  H.
>>>>>> 
>>>>>> 
>>>>>> 
>>>>>> Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info
>>>>>> 
>>>>>> On 8/4/21 7:05 AM, Linux for blind general discussion wrote:
>>>>>>> How was linux mint and orca during installing?
>>>>>>> 
>>>>>>>> On Aug 3, 2021, at 9:23 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>>>>>> 
>>>>>>>> This message is coming from my Solus Mate installation.  Mate and the applications work as expected, with the exception of speech dispatcher.  All other audio sounds fine, but speech is a little choppy.  Also, I found that some packages aren't in the repos, namely LIOS and Chirp.  I don't know what the build experience is like in Solus, and have those packages in my Slint system. Speaking of Slint, have you considered it?
>>>>>>>> 
>>>>>>>> 
>>>>>>>> I have used Linux Mint Mate edition, and find that the accessibility works fine in the apps and on the desktop and menus.  I find that I have to use flat review on Mint Mate's bottom panel, and the battery  charge indicator doesn't seem to refresh properly.
>>>>>>>> 
>>>>>>>> 
>>>>>>>> 
>>>>>>>> HTH,
>>>>>>>> 
>>>>>>>> 
>>>>>>>> 
>>>>>>>> Dave  H.
>>>>>>>> 
>>>>>>>> 
>>>>>>>> 
>>>>>>>> 
>>>>>>>> Sent with Thunderbird and Solus GNU/Linux.
>>>>>>>> 
>>>>>>>> On 8/3/21 10:13 PM, Linux for blind general discussion wrote:
>>>>>>>>> Dave, I have used gnome and mate with ubuntu.
>>>>>>>>> I thought of linux mint, and tried it, but orca would not work.
>>>>>>>>> Had you tried mint?
>>>>>>>>> As to Solus, is that workable?
>>>>>>>> _______________________________________________
>>>>>>>> Blinux-list mailing list
>>>>>>>> Blinux-list@redhat.com
>>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>> _______________________________________________
>>>>>>> Blinux-list mailing list
>>>>>>> Blinux-list@redhat.com
>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>> 
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>> 
>>>>> 
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
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

