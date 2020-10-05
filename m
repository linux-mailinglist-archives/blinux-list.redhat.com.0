Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5C3B8283BC0
	for <lists+blinux-list@lfdr.de>; Mon,  5 Oct 2020 17:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601913378;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IZVgUtRb6q2L/BTZZ/cdvyVW2WOWURZXvqUSUVJ/cB8=;
	b=SVOmPbmfKr5h46ArP0eZVuv583I4fNS8ilg/Q1KBkrOqifGwFoVxrwmkUr2QBs/d81nmCT
	7lpfAXFT6MpljrKKt9ohvaktWuq0vBEotMPQufiTVNJujk96GqfY4lRlPnXUezwqu8TPwA
	jxFc+8Tc++4E5F63FEOBf+aoJbaBy2I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-264-DHuFTfayPN60a_ffSS585Q-1; Mon, 05 Oct 2020 11:56:15 -0400
X-MC-Unique: DHuFTfayPN60a_ffSS585Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 48396107ACF5;
	Mon,  5 Oct 2020 15:56:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 490C65C1BD;
	Mon,  5 Oct 2020 15:56:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BAEB244A64;
	Mon,  5 Oct 2020 15:56:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 095Fu3FT031895 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Oct 2020 11:56:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 36931201EB53; Mon,  5 Oct 2020 15:56:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31E1F2028CCE
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 15:56:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25509858289
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 15:56:01 +0000 (UTC)
Received: from server2.shellworld.net (ip-66-172-12-120.chunkhost.com
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-435-1Z22YU7dPZ2-cqhHW741xw-1; Mon, 05 Oct 2020 11:55:58 -0400
X-MC-Unique: 1Z22YU7dPZ2-cqhHW741xw-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 0B6FE54015C; Mon,  5 Oct 2020 15:55:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 06767540108
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 11:55:57 -0400 (EDT)
Date: Mon, 5 Oct 2020 11:55:56 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speakup and links browser
In-Reply-To: <alpine.NEB.2.23.451.2010050931590.22871@panix1.panix.com>
Message-ID: <Pine.LNX.4.64.2010051142180.19952@server2.shellworld.net>
References: <alpine.NEB.2.23.451.2010040553040.14816@panix1.panix.com>
	<Pine.LNX.4.64.2010041843340.25048@server2.shellworld.net>
	<alpine.NEB.2.23.451.2010050931590.22871@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi there,
Okay, after fixing the link so there was no slash before the org part of 
the  path, here is what I did.
Granted, as stated, I am not using speakup, but if you have links the 
chain configured to its best advantage, this sould not be a problem.
by which I mean you have the links are numbered feature turned on.  Much 
as with lynx the cat, numbering the links lets you skip past images 
without issue.
I have no idea which file  you desired, there is allot of them.
Still, I used my arrow keys past the things like parent directory and the 
like to reach one of the  binary images listed.
When I hit entre I got the message
download,
details of the file name is a binary image, would you like to save or 
display   this file?
Such is what I normally get when downloading, if you move your arrow key 
to the right you get an s for save, a d for display, sometimes an extra 
like  show full headers, and c to cancel the  process.
I cannot imagine why speakup would prevent that from working 
comparatively.
Indeed the files menu, I hit escape and arrow down, is there, but i am 
unsure it is the best choice here.  When I am saving a formatted document I 
use the files menu.  but other files like this one or audio or whatever 
hitting the entre key starts the process for me, and I have links are 
numbered set so I can reach the desired download.
Does this resonate?
Karen



On Mon, 5 Oct 2020, Linux for blind general discussion wrote:

> https://bouncer.gentoo/org/fetch/root/all/releases/amd64/autobuilds/current-stage3-amd64/
>
> What I did with speakup was to try moving with the tab key onto the
> first stage3 link andthat didn't work.  So I tried with the arrow keys
> and that didn't work either.  Speakup said it had worked, but speakup
> lied.  How I know is the stage3 file ends in .tar.xz and the only thing
> links was willing to download was an image file from that location.  So
> next I left braille terminal alone since I had enabled that before going
> into the site and it didn't do anything for me.  Finally, I numbered
> links in the links configuration settings under html options then saved
> those html options two separate menu entries then I keyed in the correct
> number for the stage3 file to download and that was the only way links
> would get the job done.  What's worse, I got no notification that the
> download was complete from links.
> The other way that's possible is with a bash script where site and
> download are two variables defined and using wget with the -bc options
> since that way you can know when your download is complete.
> You use grep to search wget-log for the word saved and that line will
> let you know your file download is complete.  No comment on validity of
> the download, that's a matter for sha512sum.
>
> On Sun, 4 Oct 2020, Linux for blind general discussion wrote:
>
>> Date: Sun, 4 Oct 2020 18:45:08
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Subject: Re: speakup and links browser
>>
>> How about share the location  so others
>> can see if they have the same download issue?
>> no idea about speakup, but I use links the chain for downloading often.
>>
>>
>>
>> On Sun, 4 Oct 2020, Linux for blind general discussion wrote:
>>
>>> I tried downloading a file from a website using links and couldn't
>>> download the file.
>>> Using speakup I was able to cursor onto the desired file or that's what
>>> speakup told me.
>>> However when I tried to download that file I got offered an image file
>>> from another cursor location on the screen I did not want.
>>> I think this is more of a links problem than a speakup problem and am
>>> wondering if it's possible to configure links in some way to clear this
>>> problem.
>>> I don't know what the braille setting would have bought me since I have no
>>> braille display.
>>> As things stand, I had more success with wget and a bash script I wrote.
>>> For that reason I'm going to share this one with the list.
>>> The script could probably be improved by adding a site variable to the
>>> download variable for wget to process but I haven't done that yet.
>>>
>>> #!/usr/bin/env bash
>>> #file: s3.sh - gentoo stage3 download script
>>> download="stage3-amd64-20201001T120249Z.tar.xz"
>>> wget -bc
>>> https://bouncer.gentoo.org/fetch/root/all/releases/amd64/autobuilds/current-stage3-amd64/$download
>>>
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

