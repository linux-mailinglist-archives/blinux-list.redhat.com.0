Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BC378534836
	for <lists+blinux-list@lfdr.de>; Thu, 26 May 2022 03:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653529104;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rzT1DQVwrU3yAbB0S3nVCgqKS2t8jpPIlGh/kyvnTBw=;
	b=AdtpM9uRNIeqhRKUePISQhmn4AsrW+M0BF+HZDHIfunDVm9fRKGJ3BS1meoyhPtOFK5JY1
	CB5i2zm1xjMtWXVUte7jH2e6QZUZfP+jXMIVNy7MecMRVq45g2QjYK/9iP7M6ByjZLFaJP
	INSraEf9DkvF++n9wvpq6VcQp7Ij2Eo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-62-53vA41YZNhSp-sL46euVIA-1; Wed, 25 May 2022 21:38:21 -0400
X-MC-Unique: 53vA41YZNhSp-sL46euVIA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 249A4185A7BA;
	Thu, 26 May 2022 01:38:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AB5F1C202D1;
	Thu, 26 May 2022 01:38:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1E29A193212E;
	Thu, 26 May 2022 01:38:16 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 25 May 2022 21:38:11 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google gmail cutting off alpine
In-Reply-To: <mailman.18712.1653517340.111206.blinux-list@redhat.com>
References: <mailman.18712.1653517340.111206.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.18647.1653529096.111208.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

hi,
I believe? the alpine developers came up with a solution for this?
I am on the Alpine developers list, even though I do not use the program 
over much.
may be worth contacting them though,
Karen



On Wed, 25 May 2022, Linux for blind general discussion wrote:

> hi
> yes google are removing all  user/password authenticaion apps.
> that  wil include mutt fetchmail et al.
>
> they ar egoing oauth only.
> i seem to recollect that at the moment there are app passwords still allowed after may 30th.
>
> so if u use 2fa u can get an app password foe mutt fetchmail and so on.
> there isa branch of fetchmail that wil do the oath thing, dunno about mutt.
>
> unsure if thunderbird can do it via oauth also.
>
> in short anyting that goes via username/password to access smtp for outgoing mail or imap /pop for incomming mail wont be allowed.
>
> what u can do for incomming mail only is doa pop3 forward to a mail provider that does allow username/password, and access that via mutt.
> other than that u got to figure out a way to do it via oauth.
>
> yes its pita but google are google!
>
> ta
> neil foster
>
>
>>
>>
>> Has	 there been any notification for mutt users also; that at the end of may it too can not access gmail accounts?
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>> .
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

