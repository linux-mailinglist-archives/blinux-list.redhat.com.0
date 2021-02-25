Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6F668324E3F
	for <lists+blinux-list@lfdr.de>; Thu, 25 Feb 2021 11:37:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614249459;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jURq0XsvsH8o+10ysT3I+T+qQ04QaqCnIoCWdoq0uvk=;
	b=egeDcdovfevqBcDiNOpwPCCnI2O7bimI3uAjaV7MUu4ZSvHS39IHI2mnjgVJQ5+hbuE5v0
	KOKCzBbUyRS733HzVuKlUwDej4TS8kd/tvN7QwKqv0lrQzDrxLlIikAl27rbNlZ+vFjXfo
	ms0hMTTH1FRFZ3uO+voNiWFV4G8SQew=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-410-22T6j7-GP4iKg9fIQRhRwg-1; Thu, 25 Feb 2021 05:37:37 -0500
X-MC-Unique: 22T6j7-GP4iKg9fIQRhRwg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 353C5835E20;
	Thu, 25 Feb 2021 10:37:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B2E760BE5;
	Thu, 25 Feb 2021 10:37:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DD2844E58D;
	Thu, 25 Feb 2021 10:37:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11PAbGZ0026501 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Feb 2021 05:37:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9304C1054826; Thu, 25 Feb 2021 10:37:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8DACC1050165
	for <blinux-list@redhat.com>; Thu, 25 Feb 2021 10:37:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB23C9595C4
	for <blinux-list@redhat.com>; Thu, 25 Feb 2021 10:37:12 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-528-dtyVPgEiNxOFWWbrVQLxew-1; Thu, 25 Feb 2021 05:37:10 -0500
X-MC-Unique: dtyVPgEiNxOFWWbrVQLxew-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DmTkF4c83zL7X
	for <blinux-list@redhat.com>; Thu, 25 Feb 2021 05:37:09 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DmTkF3nrvzcbc; Thu, 25 Feb 2021 05:37:09 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DmTkF3VG5zcbV
	for <blinux-list@redhat.com>; Thu, 25 Feb 2021 05:37:09 -0500 (EST)
Date: Thu, 25 Feb 2021 05:37:09 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: cut or similar utility
In-Reply-To: <20210224210426.427356b6@bigbox.attlocal.net>
Message-ID: <alpine.NEB.2.23.451.2102250536310.22148@panix1.panix.com>
References: <alpine.NEB.2.23.451.2102242144590.1365@panix1.panix.com>
	<20210224210426.427356b6@bigbox.attlocal.net>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks, I didn't study awk much at all earlier.


On Wed, 24 Feb 2021, Linux for blind general discussion wrote:

> Tim here.  Awk will get you where you want to go.  The "NF" variable
> contains the number of fields on any given row, so if you just want
> the number of fields in the first row:
>
>  $ awk '{print NF; exit}' file.txt
>
> However, if your rows can have differing numbers of fields, it gets a
> bit more complex.  Do you want the number of fields in the longest
> one?
>
>  $ awk 'NF>m{m=NF}END{print m}' file.txt
>
> The shortest one?
>
>  $ awk 'NF<m || NR==1{m=NF}END{print m}' file.txt
>
> The stats on each of them?
>
>  $ awk '{++a[NF]}END{for (k in a) print a[k], k}' file.txt | sort -n
>
> (that's the count followed by the number of fields, sorted by
> increasing frequency)
>
> By default awk considers things "fields" if they're separated by one
> or more spaces or tabs, but you can change the delimiter by passing
> the -F option, so if your file is delimited by colons, you could use:
>
>  $ awk -F":" '{print NF; exit}' /etc/passwd
>
> Hopefully that gives you some material to start with.  I'm a bit of
> an awk junkie, so if one of those doesn't work for you, let me know
> and I can tweak it pretty readily.
>
> -Tim
>
> On February 24, 2021, Linux for blind general discussion wrote:
>> is cut or a similar utility once passed a file able to analyze the
>> file and return the number of fields in that file it could find?
>>
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
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

