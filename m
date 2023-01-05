Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C350E65E8F9
	for <lists+blinux-list@lfdr.de>; Thu,  5 Jan 2023 11:24:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672914260;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zHE12xF6GIiPzyAUmxOVqWTgXKi54Qjb/WhAe7yfXHo=;
	b=CFsNrwxhKb7H1xQrNclaSCtriN08ImI9SLROxTdE52urYuzsdix7B0DwEL8kV38HZEyRW8
	MtNt4yBsVBPY/NZWS8wNwGpRGScM6wIjR2bIDzRhk4wtJ1RXNfcnI8wQ7cXqYgrGr3y9pV
	uwbgUDBHXnxAXxKjioy3E4mf5OrFU7Q=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-77-kWq5JB7uOjWKpDv-gygTgg-1; Thu, 05 Jan 2023 05:24:17 -0500
X-MC-Unique: kWq5JB7uOjWKpDv-gygTgg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 684F33813F2E;
	Thu,  5 Jan 2023 10:24:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 00BBB2026D4B;
	Thu,  5 Jan 2023 10:24:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4B1BE1946594;
	Thu,  5 Jan 2023 10:24:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 5 Jan 2023 12:19:05 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Reducing redundancy in a collection of text files.
In-Reply-To: <mailman.1402.1672189247.2515662.blinux-list@redhat.com>
References: <mailman.1402.1672189247.2515662.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.3121.1672914251.2515682.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

You can look at the comm command for compairing files.
It does not solve your problem, but might help you getting there.
Regards, Willem


On Wed, 28 Dec 2022, Linux for blind general discussion wrote:

> Okay, I have two related issues, one regarding comparing text files
> and one regarding the contents of a single text file, and in both
> cases, I'm mostly working with transcripts of conversations I had with
> an AI language model that I'm trying to clean up.
>
> For the first issue, mostly caused by sometimes saving a transcript at
> a dozen points in the conversation, let's say we have two versions of
> a file A and B.
>
> Ideally, B contains everything contained in A plus some extra content
> not found in A. Since A has no unique content, it can be deleted
> safely.
>
> By extention, ideally, if I have a dozen versions of a given file, the
> above would hold for every link in the chain, and I could just do a wc
> on the files and delete all but the longest file.
>
> Problem is, I can't be sure A doesn't have contents not found in B,
> and on top of that, the file names aren't always descriptive, so it
> isn't obvious when I should even try comparing the contents of two
> files.
>
> I suspect diff has an option or set of options to detect when one or
> both of a pair of files have unique contents, but diff's lack of batch
> processing would make using such a bit of a pain even just running it
> on the file pairs I know to be similar.
>
> Is there either a utility that will compare every pair of files in a
> directory looking for contents found in one but not the other,
> deleting files with no unique content or a way to have a bash script
> loop through a directory with diff to do something similar?
>
> Does something like
>
> for file 1 in *.txt file2 in *.txt; do
> diff $file1 $file2
> done
>
> or nesting fore loops of this sort even work in bash? I honestly don't
> know as I don't think I've ever written a script that had to loop
> through a cartesian product of input files instead of a single set.
>
> The other issue is that the AI language model in question likes
> repeating itself... I might get a dozen responses that are half new
> and half quoting part of the previous response, leading to a deozen
> copies of some paragraphs.
>
> I know the uniq command can find and remove duplicate lines in a file,
> but it only works if the duplicates are adjacent, and sorting the file
> to make the duplicates adjacent would destroy any semblance of the
> files having an order... plus, I'm more interested in finding
> duplicates at the paragraph level, not the line level and while some
> of the files only have line breaks at the end of the paragraph, others
> have line breaks mid paragraph... Also, it would be nice if, instead
> of just deleting the duplicate paragraphs, the tool I use to automate
> tracking them down replaced the duplicates with a marker indicating
> the starting line number of the original and the first 40 or so
> characters of the paragraph to facilitate wanting to either move the
> duplicated paragraph to one of the later occurances or deciding to
> keep some of the duplicates for one reason or another.
>
> Anyone know of any tools for locating repeated content in a file
> without the limitations of uniq?
>
> And for either issue, I would prefer a command line solution.
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

