Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 635382056AA
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jun 2020 18:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592928013;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bCAfwzGtcvIcnS6FLj6Y2LEx0kT5HM2bI9cB8jb9hHw=;
	b=Phtfx9pehtQ7/sOaIhVb3KtlCApRkCZUele2Vq/m65pvdyvZbpzuN7neVT2q1m2HSHdY0V
	9V12gJUc4k+dPpNG7usCI+/iAA004JpAZ5zsQRVtcpQDZNA/vC4tYaHsljRBdZFvNiejEA
	9GxuLhxGNACqhW/mZ6nGWrBAARGBM3s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-488-aYz5MW_cOJqYPJGgEhKPJQ-1; Tue, 23 Jun 2020 12:00:11 -0400
X-MC-Unique: aYz5MW_cOJqYPJGgEhKPJQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ACBBB107ACF6;
	Tue, 23 Jun 2020 16:00:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5137310013D2;
	Tue, 23 Jun 2020 16:00:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B4E08833D2;
	Tue, 23 Jun 2020 16:00:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05NG03Gl023922 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Jun 2020 12:00:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 09045217B438; Tue, 23 Jun 2020 16:00:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB075217B43B
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 16:00:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E990E858F02
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 16:00:00 +0000 (UTC)
Received: from server2.shellworld.net (ip-66-172-12-120.chunkhost.com
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-208-XhIQyG1xOm6BZ5wKgHHyNg-1; Tue, 23 Jun 2020 11:59:58 -0400
X-MC-Unique: XhIQyG1xOm6BZ5wKgHHyNg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 3941A541DB1; Tue, 23 Jun 2020 15:50:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 383AE541DAC
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 11:50:12 -0400 (EDT)
Date: Tue, 23 Jun 2020 11:50:12 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: off list questions
In-Reply-To: <C89E4DED-1132-45C0-BE16-E42E2E9B6ACD@gmail.com>
Message-ID: <Pine.LNX.4.64.2006231148450.7123@server2.shellworld.net>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<C89E4DED-1132-45C0-BE16-E42E2E9B6ACD@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Make an on list request first to write the individual you  seek.
That way  they know not to consider you  a spam slice.



On Tue, 23 Jun 2020, Linux for blind general discussion wrote:

> Hello Al and everyone else.
> How may I write to someone, if I want to explore a linux topic with someone off list?
>
>> On Jun 22, 2020, at 8:03 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>
>> My objection to using "literally" figuratively is that we then have to find a new word for literally.  In the example here, "exploded" is enough and is figurative anyway.
>>
>>
>> I'll skip the other stuff, and take a second of amusement that this became a topic on a Linux list.  (Then again, computers are quite literal--in their numeric fashion.
>>
>>
>> Best!
>>
>> Al
>>
>>
>> On 6/22/20 6:47 PM, Linux for blind general discussion wrote:
>>> Yeah, I don't really get the objection to the word "share" in the
>>> context of telling someone about an experience, and while saying
>>> someone has issues is vaguer than saying someone's nuts, I don't
>>> really see such as euphemistic... granted, someone having issues could
>>> just as easily refer to everyday stress and/or bad luck.
>>>
>>> I'm also okay with the word "literally" being used figuratively(e.g.
>>> saying someone literally exploded as metaphor/hyperbole for a fit of
>>> anger).
>>>
>>> Then again, perhaps my inner linguist is just more of a descriptivist
>>> than a prescriptivist.
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>
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

