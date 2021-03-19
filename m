Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A921A3411F7
	for <lists+blinux-list@lfdr.de>; Fri, 19 Mar 2021 02:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616116253;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=o5XgxpQNsaT0d7tvbhaCz864qK+PJtKEyXEnTXBaZLs=;
	b=Z89WXNx2VELtjSTx16e6Hr0skbsty+p3klxnbLjXqJ6dedvf6Fx/s99fjR+0ghSDf5ESH3
	Nvn7Dgx4SMkzU6IiY9NCdkgUjX0J16s0/42HCmBQz4gEZBRCjXhs8lnU0K+cZDncj3zE0V
	Ekg87i7xsAUEMOa93sk78JagEbZ228c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-248-VeN-LPG0PoOYBLdVpCGcOA-1; Thu, 18 Mar 2021 21:10:52 -0400
X-MC-Unique: VeN-LPG0PoOYBLdVpCGcOA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8AE99800D53;
	Fri, 19 Mar 2021 01:10:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D28810013C1;
	Fri, 19 Mar 2021 01:10:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 52AA24BB7C;
	Fri, 19 Mar 2021 01:10:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12J1AeYq004839 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 21:10:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F1805FA72A; Fri, 19 Mar 2021 01:10:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EC56EF9ADC
	for <blinux-list@redhat.com>; Fri, 19 Mar 2021 01:10:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6EA5180331A
	for <blinux-list@redhat.com>; Fri, 19 Mar 2021 01:10:37 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-149--ZzcjZ_fMbmQmL94Az82fA-1; Thu, 18 Mar 2021 21:10:35 -0400
X-MC-Unique: -ZzcjZ_fMbmQmL94Az82fA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4F1m6L60zCz1h9q
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 21:10:34 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4F1m6L5BKzzcbc; Thu, 18 Mar 2021 21:10:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4F1m6L4sDfzcbV
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 21:10:34 -0400 (EDT)
Date: Thu, 18 Mar 2021 21:10:34 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Decluttering Thunderbird/other alternatives?
In-Reply-To: <ab3298ec-a4d7-f2a1-e422-922ca49959d9@protonmail.com>
Message-ID: <alpine.NEB.2.23.451.2103182106130.7593@panix1.panix.com>
References: <bfe62c6d-2e03-2175-0a5d-21a398151040@gmail.com>
	<ab3298ec-a4d7-f2a1-e422-922ca49959d9@protonmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Mutt when used with gmail needs its own app password generated for it. 
It's not possible to use original google account passwords inside mutt 
since mutt hasn't yet google's security standards on linux.
Though google uses Linux extensively recent discovery of 15 year old 
kernel security bugs hackers exploit will need fixing.  You can be sure 
Windows has even older security holes in it due to its age and several 
versions.



On Thu, 18 Mar 2021, Linux for blind general discussion wrote:

> hey there,
>
> hmm, I'm affraid I kind of don't understand it.
>
> How exactly is Thunderbird clutter?
>
>
> As for Lightning, yes, it used to be there, but it was never appearing
> anywhere near the components used for navigation, and was so invisible,
> that I don't remember ever seeing it.
>
> In fact, I don't even know, whether it is still here or not. :D
>
> There were various changes, and I don't remember what's the current
> resolution.
>
>
> As for the new message window, what version of TB do you use?
>
> In 78+ releases, the recipient field was replaced by a newone, which
> allows you to write everything to that one place.
>
> Right after finishing the address and tabbing or may be pressing some
> key (I did not check), it disappears and nextone can be written, if you
> wish the message to be send to anyone else.
>
>
> So in practice, you need just one tab to get to the subject field.
>
>
> In general, I'm personally really satisfied with TB. It perhaps could be
> a little bit faster with imap accounts, but since I use Protonmail,
> which provides its own app to create a local imap server for end to end
> inbox encryption / decryption, that doesn't really bother me as local
> sockets have practically no speed limits.
>
>
> Being able to sort e-mails to threads (in a logical way, unlike
> Evolution), receive RSS news and write eMails in Markdown, I personally
> currently don't have any reasons to search alternatives, except my
> curiosity. :)
>
>
> Best regards
>
>
> Rastislav
>
>
> D?a 18. 3. 2021 o 16:01 Linux for blind general discussion nap?sal(a):
>> So is there a way I can declutter Thunderbird to be simpler/easier to
>> navigate? I don't /need/ Lightningtaking up space, or having to tab
>> twice in writing a message to get to the subject field.
>>
>> So can I do anything to declutter Thunderbird. Or are there any
>> alternative email programs that are just as good as Thunderbird that
>> work great with Orca?
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

