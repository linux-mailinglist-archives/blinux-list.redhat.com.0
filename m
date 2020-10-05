Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id F2088283E36
	for <lists+blinux-list@lfdr.de>; Mon,  5 Oct 2020 20:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601922188;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Sq1exj0ml+J7ChIsMPo+nUliZdFKByvZEOzfoPUSOt4=;
	b=a2nX7jHucdsaxy6P8ukdQV9tDdZQOhStycgaobqsCDoluQuM1U0OwIU3rZlosYsVlUpsXd
	XHN/MpOXMBq2BAceiH2HkDG9V9YrZYYyAA4SwUqtyqVln+xiqeMa3KLkob31CESP6rtpyM
	xmMihcLMxxKtZW0U+fl03QpNVfsNimM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-266-Zq0G-AsRMraipKks-TejxA-1; Mon, 05 Oct 2020 14:23:05 -0400
X-MC-Unique: Zq0G-AsRMraipKks-TejxA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D30E2640A7;
	Mon,  5 Oct 2020 18:23:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B59855782;
	Mon,  5 Oct 2020 18:23:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 558DA1826D2F;
	Mon,  5 Oct 2020 18:22:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 095IMfwb019503 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Oct 2020 14:22:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7C4F11111A4A; Mon,  5 Oct 2020 18:22:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 782081000DB8
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 18:22:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 86545811E76
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 18:22:38 +0000 (UTC)
Received: from server2.shellworld.net (ip-66-172-12-120.chunkhost.com
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-173-x1LuDm9QMU-roUu7o8zEgQ-1; Mon, 05 Oct 2020 14:22:35 -0400
X-MC-Unique: x1LuDm9QMU-roUu7o8zEgQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 50D9B54015C; Mon,  5 Oct 2020 18:22:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 4FF54540105
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 14:22:34 -0400 (EDT)
Date: Mon, 5 Oct 2020 14:22:34 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speakup and links browser
In-Reply-To: <alpine.NEB.2.23.451.2010051247180.13783@panix1.panix.com>
Message-ID: <Pine.LNX.4.64.2010051418330.23289@server2.shellworld.net>
References: <alpine.NEB.2.23.451.2010040553040.14816@panix1.panix.com>
	<Pine.LNX.4.64.2010041843340.25048@server2.shellworld.net>
	<alpine.NEB.2.23.451.2010050931590.22871@panix1.panix.com>
	<Pine.LNX.4.64.2010051142180.19952@server2.shellworld.net>
	<alpine.NEB.2.23.451.2010051247180.13783@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

well success to you with all those layers.
I am not using any accessibility flag, just the edition of Ubuntu shell 
that  my office service uses,  via dreamhost.
Granted my screen reader is more universal, and I  ran a command  adding 
the numbers to active links in links the chain for my office workspace.



On Mon, 5 Oct 2020, Linux for blind general discussion wrote:

> Hi Karen,
>
> On gentoo which I was using before it was completely installed this
> didn't work.  I had to key in numbers to get to links then hit enter to
> activate them.  It could be links will behave better once gentoo is
> fully installed.  The accessibility use flag wasn't yet set so this
> could explain the failure with speakup and links.  Going forward that
> flag will be in effect.
>
> On Mon, 5 Oct 2020, Linux for blind general discussion wrote:
>
>> Date: Mon, 5 Oct 2020 11:55:56
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Subject: Re: speakup and links browser
>>
>> Hi there,
>> Okay, after fixing the link so there was no slash before the org part of the
>> path, here is what I did.
>> Granted, as stated, I am not using speakup, but if you have links the chain
>> configured to its best advantage, this sould not be a problem.
>> by which I mean you have the links are numbered feature turned on.  Much as
>> with lynx the cat, numbering the links lets you skip past images without
>> issue.
>> I have no idea which file  you desired, there is allot of them.
>> Still, I used my arrow keys past the things like parent directory and the like
>> to reach one of the  binary images listed.
>> When I hit entre I got the message
>> download,
>> details of the file name is a binary image, would you like to save or display
>> this file?
>> Such is what I normally get when downloading, if you move your arrow key to
>> the right you get an s for save, a d for display, sometimes an extra like
>> show full headers, and c to cancel the  process.
>> I cannot imagine why speakup would prevent that from working comparatively.
>> Indeed the files menu, I hit escape and arrow down, is there, but i am unsure
>> it is the best choice here.  When I am saving a formatted document I use the
>> files menu.  but other files like this one or audio or whatever hitting the
>> entre key starts the process for me, and I have links are numbered set so I
>> can reach the desired download.
>> Does this resonate?
>> Karen
>>
>>
>>
>> On Mon, 5 Oct 2020, Linux for blind general discussion wrote:
>>
>>> https://bouncer.gentoo/org/fetch/root/all/releases/amd64/autobuilds/current-stage3-amd64/
>>>
>>> What I did with speakup was to try moving with the tab key onto the
>>> first stage3 link andthat didn't work.  So I tried with the arrow keys
>>> and that didn't work either.  Speakup said it had worked, but speakup
>>> lied.  How I know is the stage3 file ends in .tar.xz and the only thing
>>> links was willing to download was an image file from that location.  So
>>> next I left braille terminal alone since I had enabled that before going
>>> into the site and it didn't do anything for me.  Finally, I numbered
>>> links in the links configuration settings under html options then saved
>>> those html options two separate menu entries then I keyed in the correct
>>> number for the stage3 file to download and that was the only way links
>>> would get the job done.  What's worse, I got no notification that the
>>> download was complete from links.
>>> The other way that's possible is with a bash script where site and
>>> download are two variables defined and using wget with the -bc options
>>> since that way you can know when your download is complete.
>>> You use grep to search wget-log for the word saved and that line will
>>> let you know your file download is complete.  No comment on validity of
>>> the download, that's a matter for sha512sum.
>>>
>>> On Sun, 4 Oct 2020, Linux for blind general discussion wrote:
>>>
>>>> Date: Sun, 4 Oct 2020 18:45:08
>>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>>> To: Linux for blind general discussion <blinux-list@redhat.com>
>>>> Subject: Re: speakup and links browser
>>>>
>>>> How about share the location  so others
>>>> can see if they have the same download issue?
>>>> no idea about speakup, but I use links the chain for downloading often.
>>>>
>>>>
>>>>
>>>> On Sun, 4 Oct 2020, Linux for blind general discussion wrote:
>>>>
>>>>> I tried downloading a file from a website using links and couldn't
>>>>> download the file.
>>>>> Using speakup I was able to cursor onto the desired file or that's what
>>>>> speakup told me.
>>>>> However when I tried to download that file I got offered an image file
>>>>> from another cursor location on the screen I did not want.
>>>>> I think this is more of a links problem than a speakup problem and am
>>>>> wondering if it's possible to configure links in some way to clear this
>>>>> problem.
>>>>> I don't know what the braille setting would have bought me since I have no
>>>>> braille display.
>>>>> As things stand, I had more success with wget and a bash script I wrote.
>>>>> For that reason I'm going to share this one with the list.
>>>>> The script could probably be improved by adding a site variable to the
>>>>> download variable for wget to process but I haven't done that yet.
>>>>>
>>>>> #!/usr/bin/env bash
>>>>> #file: s3.sh - gentoo stage3 download script
>>>>> download="stage3-amd64-20201001T120249Z.tar.xz"
>>>>> wget -bc
>>>>> https://bouncer.gentoo.org/fetch/root/all/releases/amd64/autobuilds/current-stage3-amd64/$download
>>>>>
>>>>>
>>>>> --
>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>>
>>>>>
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>
>>>>
>>>>
>>>
>>> --
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>
>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>>
>>
>
> -- 
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

