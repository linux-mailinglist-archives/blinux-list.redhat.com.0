Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3C174281485
	for <lists+blinux-list@lfdr.de>; Fri,  2 Oct 2020 15:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601646942;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2IQbPY7Xj3KXj2Mg4zIet6laKqwDLoff6JsKtt+n34Y=;
	b=Hgr8KXiaFtNHS/qE+0yohfCitxWAJAuH3kNi8Mrh2BXlidPPa3j7uJ3FknNjxwVRblXve2
	y5bX6DjUQSDyvAFBtwEDfoNKbicbWwQG8wctuxWG0jyRhq9E5E4VcDc3hlQg9W7kaJE9er
	YW+6VRlisEK/opdThsTjSkdLyRI4u5s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-545-fVRdG18cP36Bo-DIqFzyug-1; Fri, 02 Oct 2020 09:55:38 -0400
X-MC-Unique: fVRdG18cP36Bo-DIqFzyug-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C01818C5201;
	Fri,  2 Oct 2020 13:55:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9889F5577E;
	Fri,  2 Oct 2020 13:55:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D658644A4A;
	Fri,  2 Oct 2020 13:55:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 092DpgBv023284 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Oct 2020 09:51:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 83439112338; Fri,  2 Oct 2020 13:51:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7CBD8113F72
	for <blinux-list@redhat.com>; Fri,  2 Oct 2020 13:51:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 177D2101A540
	for <blinux-list@redhat.com>; Fri,  2 Oct 2020 13:51:38 +0000 (UTC)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-398-dnDe-AzRNwOOlMDoT5gUww-1; Fri, 02 Oct 2020 09:51:35 -0400
X-MC-Unique: dnDe-AzRNwOOlMDoT5gUww-1
Received: by mail-io1-f45.google.com with SMTP id l8so1574022ioh.11
	for <blinux-list@redhat.com>; Fri, 02 Oct 2020 06:51:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=Gwelt7lFqyxTDdmDsJchlOtrmVNYVSKy60mGgK3fO2I=;
	b=HdYx0PqSjy86xJq0GRU1FqzK7mTKIWSrUaf5bHvufwnjz2RO6muur/kjC/RFLnzJeo
	h4Pb9Kz5fyOEv/+UNQlLhTj0bnOISAtfoFxMUmhnBsxKVpshqqVrAPNXKfI+JfWCyrmG
	aUT1a+o9nYmDlWYQLiHRgHn0+TKQ04GfDvcO7+p+RJfE+7txDUdMCWJACh+3Odw1Lpvj
	V4ZqFVsptffiumIJ0mrc9HniTJBZKxadQ3lEedVIDfYY4kpusc3R4Zz+S3L3wZd38c0X
	DuMCNjkQ5doRl9TIfRdtwnUG+D8Qu6ohOfTYQCQlrjUtV4by8N25mn/QlIOZIX9Pjz4b
	S8lQ==
X-Gm-Message-State: AOAM532QRQa/OZFSvqM9I7dDtZHRfREno64xrLCsST/KNKh8E+y8g8hI
	emYOaurcYnLPqKY3evN6Tew1qSV4pidDm+f/ZrAKTDxf
X-Google-Smtp-Source: ABdhPJwWbXWHq5+gGkYoxGgcTGxhitmDm0IVyvCF0+kecs1WwNMwW3rlLEXgXTdA5HxFYEAejFDo4yOPKwCNSJXLaxA=
X-Received: by 2002:a5d:84c6:: with SMTP id z6mr2102363ior.0.1601646694511;
	Fri, 02 Oct 2020 06:51:34 -0700 (PDT)
MIME-Version: 1.0
References: <87ft6xoznv.fsf.ref@yahoo.com> <87ft6xoznv.fsf@yahoo.com>
In-Reply-To: <87ft6xoznv.fsf@yahoo.com>
Date: Fri, 2 Oct 2020 08:51:22 -0500
Message-ID: <CAGJxbF4FkVdc2mykt9ChgN2Yj2en6EvnmPeL+uVbjondqY+gsg@mail.gmail.com>
Subject: Re: Continuous reading in Emacspeak and Cursor Movement
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Unfortunately, due to the good Doctor Raman's views on
Emacspeak's obstinance from being anything close to a "screen reader,"
there is no such feature. You're supposed to use Emacs like a sighted
person, mainly just using C-v and M-v to scroll, stuff like that. But then,
he did add C-e n, that command is there, so who knows. I just use C-v to
scroll, and C-s and just search for where I left off at.
Devin Prater
sent from Gmail.


On Fri, Oct 2, 2020 at 2:28 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Hi,
>
> I am used to continuous reading in Orca whereby the cursor moves along
> with the speech. In Emacspeak, however, I don't seem to get this
> feature. So my question is: is there any way one can do continuous
> reading while cursor is moving? I would prefer to have a cursor
> positioned at the place where I call the pause or stop functions.
> By the way, I use C-E n (Control +E and n) for continuous reading. The
> frustrating thing is that even after reading a big chunk of a document,
> once Emacs receives notification, I have to try to find the spot where I
> think the last word spoken was. I think it may not be the optimal
> situation for reading or reviewing documents.
>
>
> If anyone is using Emacs, please can you share how you deal with reading
> documents? I am open to any ideas for this situation even if it means
> using any other screen reader  other than Emacspeak.
>
> Thanks in advance,
>
>
>
>
> --
> Ishe
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

