Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A6C4637A3
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 15:52:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638283958;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EqDrXC+BpVMCF41KqeH3rMfwLNFeAVYe6uzXkwXhKG4=;
	b=NhxUx2GsHTN27/zVX6ZNbOWVZP9WcwUtzP7b1+PN6Y2Xc28iAkwXAmvXoLJ1ws6JPG5Bqt
	1O4JaObhslS3n9XuazF+LXwLZO+ZaDmInW06M0NCcILkc+XHOTOflDMUM47C/i2U1X+XTi
	VbMmUHJMtZMmQsl51Gn7UJzYZk4WiEo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-314-Lrcbzms1MC6HIbjR0nVSFQ-1; Tue, 30 Nov 2021 09:52:34 -0500
X-MC-Unique: Lrcbzms1MC6HIbjR0nVSFQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2C8FC1006AA2;
	Tue, 30 Nov 2021 14:52:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9DD0C5D9D5;
	Tue, 30 Nov 2021 14:52:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 71C1A4A7CA;
	Tue, 30 Nov 2021 14:52:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUEkZqq025252 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 09:46:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DF1711402406; Tue, 30 Nov 2021 14:46:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D97AF1402400
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 14:46:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BED4785A5BA
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 14:46:34 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
	[209.85.219.51]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-147-spd-N9YROribOW10lzfxFQ-1; Tue, 30 Nov 2021 09:46:32 -0500
X-MC-Unique: spd-N9YROribOW10lzfxFQ-1
Received: by mail-qv1-f51.google.com with SMTP id u16so18155087qvk.4
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 06:46:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=CRxjSztGUrJwev+3jSGSUsHt6h3jqi+e0lUHeuhj5dI=;
	b=yx8iKSoKqtH65p7cX6yqUa9NRPHC5pXq6ufTxwpbRDYa582/n9VVePkyIskVjw8ygl
	OdggoHr9sl17g3TkpsU1TR9xGm1AG1prkQBfh5uNkBtm3bPOcetAlBXXTGrkKbWowtIy
	nlOIZeVYqJpWdCFbs7ETAOYpZAX3hE4CbwKwH63YBo+2pf5Iz7jKSLVFIBC0g6totwLV
	Vc+mVN5qKrKJVoh+g7PN8aDgJo1rYUkJHp2ukon3fd0/h8u6Ei9R7nbscOgE6jY1Qssa
	3lIqBsgiqfFHmQqtV+uTJ2+rwhSumPFpeP1/2deICLtmyRIMsQONiWttxEZYAJ3imy1y
	xQqA==
X-Gm-Message-State: AOAM530Y4H4yUHbneMrSzbTtgIFVoQ5C7HfbgTCmesXW5ZAHmVt8Tc9O
	i4fQge5ggj7tszP8mKwoBaNXdbeif2AeljP1dqbtJYEP
X-Google-Smtp-Source: ABdhPJw7/9JIUR//XE7XH4I2XxAu2UXor/EoF9N2YKWOPz06eR/NMCIT3ekSKAhFGd9JjAiPzlCAyYuzVGiFh6GTDRk=
X-Received: by 2002:ad4:5bc5:: with SMTP id t5mr37808935qvt.72.1638283592195; 
	Tue, 30 Nov 2021 06:46:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Tue, 30 Nov 2021 06:46:31
	-0800 (PST)
In-Reply-To: <alpine.NEB.2.23.451.2111300606410.11173@panix1.panix.com>
References: <c46122c2-cd84-f852-d4e8-0d9018caf644@gmail.com>
	<alpine.NEB.2.23.451.2111300440330.5394@panix1.panix.com>
	<745bf6e8-8267-1064-ecbf-fa53a36f2019@seznam.cz>
	<alpine.NEB.2.23.451.2111300524140.12284@panix1.panix.com>
	<77bd08c8-a47c-8526-28c9-d5145ebea123@seznam.cz>
	<alpine.NEB.2.23.451.2111300606410.11173@panix1.panix.com>
Date: Tue, 30 Nov 2021 14:46:31 +0000
Message-ID: <CAO2sX33Qx4pWfA_9JjtFu0oo3ob=EBRnLC4wB8_OmCwuj5FG-w@mail.gmail.com>
Subject: Re: How to copy output from a terminal?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Aside from piping output to tee, you can also redirect output directly
to a file.

command > ouput.txt

will redirect stdout to output.txt, overwriting the contents of
output.txt in the process. changing to two right angle brackets will
append instead, and putting a two in front of the angle brackets will
redirect stderr to the file instead... No idea if it's possible to
redirect both stdout and stderr at the same time, either to the same
file or to different files, though my experience is that it's fairly
rare for there to be enough mixing of stdout and stderr you actually
need both to give proper context when asking for help.

Though, would anyone mind explaining why one might want to use tee
over simple redirection?

On 11/30/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> That log you created with tee should be in your current directory.  If you
> ran this in your user directory it would be in your user directory.
>
>
> On Tue, 30 Nov 2021, Linux for blind general discussion wrote:
>
>> OK and where can I find that log? If I write startx to login to Mate, I
>> have
>> long bug.
>>
>> Vojta.
>>
>> Dne 30. 11. 21 v 11:26 Linux for blind general discussion napsal(a):
>> > Your problem is that errors go to stderr and normal output goes to
>> > stdout,
>> > but never fear Linux has you covered.
>> > $ ./command 2>&1 | tee -a command.log
>> > That sends those errors to stdout and tee writes all of that into
>> > command.log
>> >
>> >
>> > On Tue, 30 Nov 2021, Linux for blind general discussion wrote:
>> >
>> >> Hello,
>> >>
>> >> and what about copying errors? I can't boot to Stormux in Mate desktop
>> >> and
>> >> I
>> >> have long bug. How can I save it, when I am in console? is some way to
>> >> share
>> >> it with Storm and others? If I write them I have some bug, they cannot
>> >> help
>> >> me, because some bug is really large termine.
>> >>
>> >> Thanks.
>> >>
>> >> Best regards
>> >>
>> >> Vojta.
>> >>
>> >> Dne 30. 11. 21 v 10:42 Linux for blind general discussion napsal(a):
>> >>> $ ./startwin.sh|tee startwin.log does it destructively.
>> >>> $ ./startwin.sh | tee -a startwin.log does it non-destructively and
>> >>> appends onto an existing file with the same name.
>> >>>
>> >>>
>> >>> On Tue, 30 Nov 2021, Linux for blind general discussion wrote:
>> >>>
>> >>>> Hi all,
>> >>>>
>> >>>>
>> >>>> I still have a few things I need to fix, but as the subject states,
>> >>>> I
>> >>>> don't
>> >>>> know how to copy the output from a terminal so I can ask for help
>> >>>> from
>> >>>> the
>> >>>> relevant mailing lists/forums.
>> >>>>
>> >>>>
>> >>>> I am using Mate-Terminal with Orca in Fedora Mate Compiz 35. I know
>> >>>> you
>> >>>> can
>> >>>> copy text off a console using speakup, but I am not in a console, now
>> >>>> am
>> >>>> I?
>> >>>>
>> >>>>
>> >>>> If anyone has any advice, I'd be appreciative. If there is a way,
>> >>>> for
>> >>>> example
>> >>>> to pype the output from a command to a text file, for example if I
>> >>>> type
>> >>>>
>> >>>>
>> >>>> $ ./startwin.sh
>> >>>>
>> >>>> Which is how I would start my qemu Windows VM, can I pype the output
>> >>>> to a
>> >>>> text
>> >>>> file in '~/'?
>> >>>>
>> >>>>
>> >>>
>> >>> _______________________________________________
>> >>> Blinux-list mailing list
>> >>> Blinux-list@redhat.com
>> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> >>>
>> >>
>> >> _______________________________________________
>> >> Blinux-list mailing list
>> >> Blinux-list@redhat.com
>> >> https://listman.redhat.com/mailman/listinfo/blinux-list
>> >>
>> >>
>> >
>> > _______________________________________________
>> > Blinux-list mailing list
>> > Blinux-list@redhat.com
>> > https://listman.redhat.com/mailman/listinfo/blinux-list
>> >
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

