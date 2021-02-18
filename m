Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5C6AB31E537
	for <lists+blinux-list@lfdr.de>; Thu, 18 Feb 2021 05:49:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613623754;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZR9g+XVBs8IFvfkgS0uoBzFhA2c9JPj2U2kgzGgcl6I=;
	b=HqKswy6FImCKKbPy3Eys32EsXExVajg93wunJAS5IhGTs9sg52euy7wA077NTCkBd+UA3t
	hfF6337xkQ3eAWssJafWL83rTXYRJLl/47LJpr/HOm8egej5WI3co52Rkodu0rsHCQPxBj
	PGqfI6aKMh33MCYQdiEJYYRJACt7G98=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-575-bE7zPA1JM8e1AaHh5mnLrQ-1; Wed, 17 Feb 2021 23:49:10 -0500
X-MC-Unique: bE7zPA1JM8e1AaHh5mnLrQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E340591271;
	Thu, 18 Feb 2021 04:49:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 464F85D9C2;
	Thu, 18 Feb 2021 04:49:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6ACB418095CB;
	Thu, 18 Feb 2021 04:48:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11I4mgI1027939 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 23:48:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AFED410727D; Thu, 18 Feb 2021 04:48:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA767104820
	for <blinux-list@redhat.com>; Thu, 18 Feb 2021 04:48:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A26691022F09
	for <blinux-list@redhat.com>; Thu, 18 Feb 2021 04:48:39 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-245-dvN5nSbVOqGHEvBs8JgjWQ-1; Wed, 17 Feb 2021 23:48:37 -0500
X-MC-Unique: dvN5nSbVOqGHEvBs8JgjWQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Dh2KJ4fFpz1TGF;
	Wed, 17 Feb 2021 23:48:36 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Dh2KJ5K3nzcbc; Wed, 17 Feb 2021 23:48:36 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Dh2KJ55PhzcbV;
	Wed, 17 Feb 2021 23:48:36 -0500 (EST)
Date: Wed, 17 Feb 2021 23:48:36 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: bash is hurling
In-Reply-To: <20210218032008.GZ21290@nntp.AegisInfoSys.com>
Message-ID: <alpine.NEB.2.23.451.2102172345450.3738@panix1.panix.com>
References: <alpine.NEB.2.23.451.2102162306390.26855@panix1.panix.com>
	<20210217092326.GV21290@nntp.AegisInfoSys.com>
	<alpine.NEB.2.23.451.2102171137230.5642@panix1.panix.com>
	<20210218032008.GZ21290@nntp.AegisInfoSys.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
Cc: Linux for blind general discussion <blinux-list@e1890.dsca.akamaiedge.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I managed to use cut in the pipe to extract the number to a variable.
Maybe tomorrow I figure out my logic error further down in the script but 
the calculator is low on coffee and I need sleep so will get sleep and 
coffee in that order before trying to tackle this one.



On Wed, 17 Feb 2021, Linux for blind general discussion wrote:

> i beg to differ. every version of linux i have running (a couple of dozen),
> with vintages spanning 1998 to 2020, prints the filename if given, as
> a second word. on my own panix account it does this too:
>
>   wc -l /etc/passwd
>
> produces:
>
>       1775 /etc/passwd
>
> only if no filename is specified does a single word result:
>
>   cat /etc/passwd | wc -l
>
> produces:
>
>       1775
>
> there is a variation in padding of spaces in front of the first word (the
> number of lines counted), but there are always two words as in the
> example from the OP. no doubt that's what caused the reported error.
>
> On Wed, Feb 17, 2021 at 11:38:16AM -0500, Linux for blind general discussion wrote:
>> wc -l only returns one number.
>>
>>
>> On Wed, 17 Feb 2021, Linux for blind general discussion wrote:
>>
>>> the "wc" command is returning more than one word, is the problem with
>>> "let".
>>> you don't need the "let" anyway, so:
>>>
>>>  cj=`wc -l chk-jenux.log`
>>>
>>> would be enough. but if you want only the count of lines, you either have
>>> to
>>> 1: isolate the first word from "wc" (the line count):
>>>
>>>  realcj=${cj%% *}
>>>
>>> or
>>> 2: do the "wc" without a file name:
>>>
>>>  cj=`cat chk-jenux.log | wc -l`
>>>
>>> note that the first example has a few failure modes, although there are
>>> endless
>>> other ways to isolate a given word from a multi-word string. i've always
>>> used the second example.
>>>
>>> On Tue, Feb 16, 2021 at 11:08:58AM -0500, Linux for blind general
>>> discussion wrote:
>>>> I think I need a better shell.
>>>> I wanted to get a line count into a variable and bash doesn't like what
>>>> I'm doing to make that happen.  The code is:
>>>> let "cj=`wc -l chk-jenux.log`"
>>>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

