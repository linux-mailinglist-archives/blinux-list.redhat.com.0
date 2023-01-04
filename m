Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A5E65DDE6
	for <lists+blinux-list@lfdr.de>; Wed,  4 Jan 2023 21:54:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672865648;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zOiyQPcE4S6SWchR/IvwOhjtm53CJ+ezIGFBivSZfTY=;
	b=JF7YcaVW28FHfkJ5plyv3VOitHnnBeQkEx+ed/U2R5+cpsRttNHxAGcSPyJUnHebJOj+BQ
	/HsvPPYT8/KxUteteSVsnOwoW2hGF/64TdQOO08u7yjRX139wzxPJrRWQfd5UbTHQ8PjCI
	5rrj7Uyj4yflSCodcXkfgNEG6vNsjcg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-299--nvLcOeMMuWINTV0vQ0wMw-1; Wed, 04 Jan 2023 15:54:07 -0500
X-MC-Unique: -nvLcOeMMuWINTV0vQ0wMw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EADBC85D060;
	Wed,  4 Jan 2023 20:54:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DBCAD140EBF5;
	Wed,  4 Jan 2023 20:54:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3C81D1946597;
	Wed,  4 Jan 2023 20:54:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.2827.1672864702.2515671.blinux-list@redhat.com>
References: <mailman.2948.1672861418.2515658.blinux-list@redhat.com>
 <mailman.2827.1672864702.2515671.blinux-list@redhat.com>
Date: Wed, 4 Jan 2023 13:53:55 -0700
Subject: Re: Java & Orca
To: blinux-list@redhat.com
Message-ID: <mailman.3059.1672865639.2515682.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks, Rich. What I need, though, is whether Orca can access the
various screen elements in order for blind folks to be able to use a
program written in Java. Sorry for not making that entirely clear. I
knew what I meant. opcode: ReadMyMind

On 1/4/23, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>> On Jan 4, 2023, at 11:43, Jackie McBride wrote:
>>
>> Can programs written in Java be accessed by Orca? If so, explanations
>> welcome. & your efforts in advance are definitively appreciated.
>
> I'm a sighted programmer, so my comments may not be on target.  That
> said...
>
> It's not clear to me whether (by "accessed") you're talking about reading
> the source code or running an instance of the compiled program.  However, in
> both cases, some sort of intervening program would be needed.  For example:
>
> - A text editor could let you read the source code.
> - A terminal session could let you run the program.
>
> So, the question is whether you can find intervening programs that Orca
> plays nicely with.  FWIW, there are combination interfaces (e.g., Emacspeak)
> that will let you perform both activities, but be prepared for a bit of a
> learning curve.  In any case, other folks here may have better specific
> suggestions.
>
> - Rich Morin
>
>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>


-- 
Jackie McBride
Be a hero. Fight Scams. Learn how at www.scam911.org
Also check out brightstarsweb.com & mysitesbeenhacked.com

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

