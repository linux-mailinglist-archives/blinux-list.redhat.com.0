Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 007D23E1CE0
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 21:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628192338;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0PYTlJGHZLARnxPEJdGx4WizOVH98irrINXct567ZPk=;
	b=RkhdDo8uB91gmoDi3Ez35wvlRlggw3BiIohnaXBoggzYL48QK8EoVdi9AzgIDcwF9fuc4K
	gGR/Rtqgmg82b83kBGUgySiXgsaQYi4ua/8JVfH5pdoyGULACcydbTc1y+fxTlFrPzwSNr
	Y5Jks4iI3mIR39T/o+2bdGwMALwlCfA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-274-N9ovgE7INNGCNQcVSIT0Bw-1; Thu, 05 Aug 2021 15:38:56 -0400
X-MC-Unique: N9ovgE7INNGCNQcVSIT0Bw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D0608799E0;
	Thu,  5 Aug 2021 19:38:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D800E1981C;
	Thu,  5 Aug 2021 19:38:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 672C94BB7B;
	Thu,  5 Aug 2021 19:38:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 175JcZFb021449 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 15:38:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2BD70112307; Thu,  5 Aug 2021 19:38:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 270E4113B76
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 19:38:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 793418CA942
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 19:38:32 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
	[209.85.210.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-267-TPl70NmGPDeSSyf6q_4kGQ-1; Thu, 05 Aug 2021 15:38:29 -0400
X-MC-Unique: TPl70NmGPDeSSyf6q_4kGQ-1
Received: by mail-ot1-f45.google.com with SMTP id
	61-20020a9d0d430000b02903eabfc221a9so6349895oti.0
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 12:38:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=2F1V0jc5kC7b1PEE8HTCwt2bXF8nyvHznjIwcBZucYQ=;
	b=ZXE2HZTS57fMavHOKhB9Y5JYkTJ8kJVYXa4fYzI3M2zmmb9inAl93mcGUXe3NtzW2O
	levmbqUz3X1gWDn63gQdipawMgtbTN7eAi8I798vaoMZzEmraoNRuEoP2p7QF4n1Q34j
	zbhonDROnLgfK97SdqdiO4qJzmfcEojRBiX0brzvotpX8ti0OM2kYjFPePtL+E848bRe
	oMSwEuP01XdZcKYCN/8hcPEfINCMj/PqwXpD17bHDILsYoBZywqHVBSokj+8jwxPLm6P
	aQxhYlTcHOWO/7GKAhXD3kgr7hqfjoSc10Vb9i+1E40tPXVnTvc20inbV3llA3V1jjX5
	Di3g==
X-Gm-Message-State: AOAM5317EgPW0NeKop+a7oIOkwfCgctrszxDJEU1HIR6rq4PQV4Uj9BI
	ecNiGtHfGxpOVC3EUloN8Klpu1JwZViuzg==
X-Google-Smtp-Source: ABdhPJwTT5eSUr+XAafnpfDo+IRMGl9Um0Mj1h1K5jCpt8T15QbGAJ1kKwewnW8wzYvKa+DZP1dQ6Q==
X-Received: by 2002:a05:6830:280f:: with SMTP id
	w15mr4984915otu.155.1628192308201; 
	Thu, 05 Aug 2021 12:38:28 -0700 (PDT)
Received: from smtpclient.apple ([2600:1702:20f0:4420:cd23:629a:4d8e:fc66])
	by smtp.gmail.com with ESMTPSA id t9sm327006ott.39.2021.08.05.12.38.27
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 Aug 2021 12:38:27 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Solus DE observations
Date: Thu, 5 Aug 2021 15:38:26 -0400
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
	<907EC549-F01A-4345-ABFE-67B06CF6949A@gmail.com>
	<6bc4e90a-ec7d-0d4d-596f-7bbe3811baa7@gmail.com>
To: Blind Linux <blinux-list@redhat.com>
In-Reply-To: <6bc4e90a-ec7d-0d4d-596f-7bbe3811baa7@gmail.com>
Message-Id: <7A65B8CB-0152-47EA-8FDA-7D532D7FC493@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 175JcZFb021449
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

Thanks.  Must have missed it somewhere, but anyway it works.  How often are updates pushed out?  This btw is the stable branch.  Have not seen an update for  a coupleple of days so just trying to get a feel for this.  I have setup thunderbird on my system.  I am using buggy desktop at the moment.

Matthew



> On Aug 5, 2021, at 3:10 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Indeed, it's sudo eopkg up that runs a system upgrade yes
> 
> 
> That is definitely in the help center
> 
> On 8/5/21 2:05 AM, Linux for blind general discussion wrote:
>> So, how do you check for updates on the system using a terminal?  Sudo eopkg install package would install a package, but would something like sudo eopkg upgrade work or what?  I know you can go through software center, but would like to know how to do this in a terminal.  I could not find anything on the web page.
>> 
>> Matthew
>> 
>> 
>> 
>>> On Aug 4, 2021, at 6:58 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>> 
>>> For audiogame-manager...
>>> 
>>> 
>>> audiogame-manager -c
>>> 
>>> 
>>> I have it working on Solus by instaling wine, winetricks, sox and dialog
>>> 
>>> That's literally all, and all are in the repos of Solus. So sudo eopkg install sox wine winetricks dialog
>>> 
>>> On 8/4/21 11:51 PM, Linux for blind general discussion wrote:
>>>> Solus help center, is that on the solus page?
>>>> 
>>>>> On Aug 4, 2021, at 5:44 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>>> 
>>>>> I've been able to play GUI games that were made to be accessible and run in GNU/Linux, such as 2MB MineRacer, and an old tomb raider thing.  Also, the user, Storm Dragon, has written what he calls his Audio Game Manager, which lets you play a bunch of old Windows games in the Linux gui, using wine and a bunch of helper scripts.  Getting that thing installed into Solus looks like it would be a huge challenge.  He basically wrote the thing for Arch and Slint; in the latter, the build process took a long time, and there were lots of instructions.
>>>>> 
>>>>> 
>>>>> In a previous message, you wrote about keyboard shortcuts in Budgie?  Try the Solus help center; there's a small table of about 10.  One particular short cut, you asked about, is looking at your mounted drives.  That one is not there, because it's not in Budgie, rather, it's in the file manager.  If you start off, for instance, in your home folder, you can toggle various panes with f6.  One of these is like the "places" menu in something like Mate.  Your mounted volumes should show up there; hit up and down arrows to find them, and hit space on the one you want. You should get shifted into the content pane.
>>>>> 
>>>>> 
>>>>> 
>>>>> HTH,
>>>>> 
>>>>> 
>>>>> 
>>>>> Dave  Hunt
>>>>> 
>>>>> 
>>>>> 
>>>>> 
>>>>> Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info
>>>>> 
>>>>> On 8/4/21 6:26 PM, Linux for blind general discussion wrote:
>>>>>> One good thing about this solus distro is that there's a games
>>>>>> specializing distro.  What will be interesting will be to find out how
>>>>>> many more g.u.i. games either become more accessible or become accessible
>>>>>> users can play on solus.  Most of the g.u.i. games available for Linux
>>>>>> have yet to get accessible unless huge changes have happened since I last
>>>>>> checked out the scene.
>>>>>> 
>>>>>> 
>>>>>> On Wed, 4 Aug 2021, Linux for blind general discussion wrote:
>>>>>> 
>>>>>>> If I remember, it was the mate edition, about a year and a half ago.
>>>>>>> 
>>>>>>>> On Aug 4, 2021, at 12:30 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>>>>>> 
>>>>>>>> Installing Mint was exactly like installing Ubuntu, as far as I recall.  Maybe you grabbed the Cinnamon edition last time?
>>>>>>>> 
>>>>>>>> 
>>>>>>>> Cheers,
>>>>>>>> 
>>>>>>>> 
>>>>>>>> Dave  H.
>>>>>>>> 
>>>>>>>> 
>>>>>>>> 
>>>>>>>> Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info
>>>>>>>> 
>>>>>>>> On 8/4/21 7:05 AM, Linux for blind general discussion wrote:
>>>>>>>>> How was linux mint and orca during installing?
>>>>>>>>> 
>>>>>>>>>> On Aug 3, 2021, at 9:23 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>>>>>>>> 
>>>>>>>>>> This message is coming from my Solus Mate installation.  Mate and the applications work as expected, with the exception of speech dispatcher.  All other audio sounds fine, but speech is a little choppy.  Also, I found that some packages aren't in the repos, namely LIOS and Chirp.  I don't know what the build experience is like in Solus, and have those packages in my Slint system. Speaking of Slint, have you considered it?
>>>>>>>>>> 
>>>>>>>>>> 
>>>>>>>>>> I have used Linux Mint Mate edition, and find that the accessibility works fine in the apps and on the desktop and menus.  I find that I have to use flat review on Mint Mate's bottom panel, and the battery  charge indicator doesn't seem to refresh properly.
>>>>>>>>>> 
>>>>>>>>>> 
>>>>>>>>>> 
>>>>>>>>>> HTH,
>>>>>>>>>> 
>>>>>>>>>> 
>>>>>>>>>> 
>>>>>>>>>> Dave  H.
>>>>>>>>>> 
>>>>>>>>>> 
>>>>>>>>>> 
>>>>>>>>>> 
>>>>>>>>>> Sent with Thunderbird and Solus GNU/Linux.
>>>>>>>>>> 
>>>>>>>>>> On 8/3/21 10:13 PM, Linux for blind general discussion wrote:
>>>>>>>>>>> Dave, I have used gnome and mate with ubuntu.
>>>>>>>>>>> I thought of linux mint, and tried it, but orca would not work.
>>>>>>>>>>> Had you tried mint?
>>>>>>>>>>> As to Solus, is that workable?
>>>>>>>>>> _______________________________________________
>>>>>>>>>> Blinux-list mailing list
>>>>>>>>>> Blinux-list@redhat.com
>>>>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>>>> _______________________________________________
>>>>>>>>> Blinux-list mailing list
>>>>>>>>> Blinux-list@redhat.com
>>>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>>>> 
>>>>>>>> _______________________________________________
>>>>>>>> Blinux-list mailing list
>>>>>>>> Blinux-list@redhat.com
>>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>> _______________________________________________
>>>>>>> Blinux-list mailing list
>>>>>>> Blinux-list@redhat.com
>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>> 
>>>>>>> 
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
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
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

