Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D8C502005
	for <lists+blinux-list@lfdr.de>; Fri, 15 Apr 2022 03:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649985192;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HNdRwUk5XL9EymE1BPpYVPWj9DgWHX1pTV8Ujr/I0mU=;
	b=CBBOIfdfpfOeIPgcHT3r6yGoP/4gx6mMB+41hJsHLnTZ+rPR6+VMYuSSIT8fCDt9vkYGqK
	CHK+uPecisJU3zwMCsedufaZV3FvQvAfDDeoLSFLLVX904BFWuLAWvbngV2E8Jv2ft2VAA
	6ZS6b5ahScFznRJoOap07RnrILNfESs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-308-BfzhXlMxOrqjOgVdMxNW9g-1; Thu, 14 Apr 2022 21:13:09 -0400
X-MC-Unique: BfzhXlMxOrqjOgVdMxNW9g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B10ED811E78;
	Fri, 15 Apr 2022 01:13:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DFB06112132C;
	Fri, 15 Apr 2022 01:13:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 20C6A194034E;
	Fri, 15 Apr 2022 01:13:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 21:12:55 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
In-Reply-To: <mailman.8345.1649945219.111205.blinux-list@redhat.com>
References: <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8415.1649894526.111202.blinux-list@redhat.com>
 <mailman.8348.1649895614.111209.blinux-list@redhat.com>
 <mailman.8418.1649896178.111202.blinux-list@redhat.com>
 <CAO2sX33Pf=GEvGggGYy25irP6hM72QvVvsk3fGtFBnc8CT09yQ@mail.gmail.com>
 <mailman.8511.1649903521.111206.blinux-list@redhat.com>
 <mailman.8597.1649918264.111201.blinux-list@redhat.com>
 <mailman.8550.1649941474.111203.blinux-list@redhat.com>
 <mailman.8518.1649942329.111202.blinux-list@redhat.com>
 <mailman.8567.1649944446.111203.blinux-list@redhat.com>
 <mailman.8345.1649945219.111205.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.8782.1649985179.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

In fact, the years were not that many,  three or four?
But indeed, addresses were getting hit with spam.
That being said, perhaps?  we might test drive the effort with  names in 
the from field again.
I will admit such has never happened to me personally on other lists 
hosted  at different locations.
Karen



On Thu, 14 Apr 2022, Linux for blind general discussion wrote:

> That actually makes a lot of sense when it's put like that. See I don't think showing names or adresses would solve that issue, if anything it'd just rear its ugly head again. Plus the scraping of email addresses, too.i
>
> On Thu, Apr 14, 2022 at 06:53:59AM -0700, Linux for blind general discussion wrote:
>> Many years ago, whenever myself-and-others would post here, almost
>> immediately a graphic language reply from a spammer would get sent. So
>> eventually hiding our mail addresses solved those issues.
>> Chime
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>
> -- 
> Jace's words are up there. Quoted and old messages below this point
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

