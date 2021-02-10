Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 55708315ACB
	for <lists+blinux-list@lfdr.de>; Wed, 10 Feb 2021 01:15:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612916116;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+UFQSkN42n2CmPi63F9KMDXfpeW8Gr3olzK16iIaK4Q=;
	b=OauP+fSRdi3PkLyRjOLHIMFaPsahrWYL+crje+2OAjv6865x5cFqwUsAOW2WFXuabdINR8
	cjNxE7xjrhBOnffj2gLiCck/M0SAIJYi7YQ5UfxcxvCku6qQZB4biLcYtkLLhk6j7fK8fU
	on+xXGxGTP7uL/OMFBe6+peu7innvlA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-534-EO335QaiOJChwqsukgf30Q-1; Tue, 09 Feb 2021 19:15:14 -0500
X-MC-Unique: EO335QaiOJChwqsukgf30Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E4C2189DF4E;
	Wed, 10 Feb 2021 00:15:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CCBB319C59;
	Wed, 10 Feb 2021 00:15:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F154F4E58E;
	Wed, 10 Feb 2021 00:15:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11A0F5ci009932 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 9 Feb 2021 19:15:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5332D2026D16; Wed, 10 Feb 2021 00:15:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E06D2026D11
	for <blinux-list@redhat.com>; Wed, 10 Feb 2021 00:15:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD66C185A78E
	for <blinux-list@redhat.com>; Wed, 10 Feb 2021 00:15:02 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-547-Va8VojvSNmWW2NYSq6wN0w-1; Tue, 09 Feb 2021 19:15:00 -0500
X-MC-Unique: Va8VojvSNmWW2NYSq6wN0w-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 50C32621C75; Wed, 10 Feb 2021 00:14:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 4FDB3620222
	for <blinux-list@redhat.com>; Tue,  9 Feb 2021 19:14:59 -0500 (EST)
Date: Tue, 9 Feb 2021 19:14:59 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: simple Ubintu question?
In-Reply-To: <alpine.NEB.2.23.451.2102091850210.1378@panix1.panix.com>
Message-ID: <Pine.LNX.4.64.2102091913540.25258@server2.shellworld.net>
References: <Pine.LNX.4.64.2102091827530.24393@server2.shellworld.net>
	<alpine.NEB.2.23.451.2102091850210.1378@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Perhaps I need to ask that differently then.
using what method of producing speech?
sound cards are how the sound is made, not a tool like espeak or 
something.



On Tue, 9 Feb 2021, Linux for blind general discussion wrote:

> It's whatever sound card ubuntu finds.
>
>
>
> On Tue, 9 Feb 2021, Linux for blind general discussion wrote:
>
>>  Hi all,
>>  On another list an individual indicated that the desktop installation of
>>  Ubuntu allows for speech with a keystroke at the start.
>>  If this is correct, what is the synthesizer in use?
>>  thanks
>> 
>>
>>  _______________________________________________
>>  Blinux-list mailing list
>>  Blinux-list@redhat.com
>>  https://www.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
>> 
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

