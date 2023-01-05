Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FA865EFC9
	for <lists+blinux-list@lfdr.de>; Thu,  5 Jan 2023 16:17:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672931874;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=G5nXbU1jp9v2wHo1r7YW4EdLgqRZuQybNrT8t74dZYk=;
	b=YlJsOq9ym4QQC51ZQUl8GYTLM1lNNxiY4WmQs/Vf3H6v2XexTqXhV90g1G+wePfo7vBkYO
	OfFDJlLO2JcHUOXQdc8o0DFS8utAcoPf/ESdbREMYQGDB/xiwGAA0ZBHkfrArWyzujS3ND
	S+KXIPwTfO7dDKOO559C+3zLUl3FjCY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-384-0Gq9d82qPAWQvs3YBMddtQ-1; Thu, 05 Jan 2023 10:17:53 -0500
X-MC-Unique: 0Gq9d82qPAWQvs3YBMddtQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 93F05181E3F7;
	Thu,  5 Jan 2023 15:17:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C59454014CEA;
	Thu,  5 Jan 2023 15:17:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7E7901946597;
	Thu,  5 Jan 2023 15:17:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.3121.1672914251.2515682.blinux-list@redhat.com>
References: <mailman.1402.1672189247.2515662.blinux-list@redhat.com>
 <mailman.3121.1672914251.2515682.blinux-list@redhat.com>
Date: Thu, 5 Jan 2023 15:17:44 +0000
Subject: Re: Reducing redundancy in a collection of text files.
To: blinux-list@redhat.com
Message-ID: <mailman.3001.1672931870.2515669.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Original Poster here,

An update on my end, I finally figured out something to type into
Google that gave me something useful... and I came across the cmp
command.

It does a byte-by-byte comparison of two files and prints out the
first byte that differs and what line it can be found on. That's
potentially useful on its own, but what's been most helpful is that,
if you run cmp on a pair of files that are identical aside from one
being longer and continuing past the end of the shorter file, it will
report EOF on the shorter file, which solves the problem of removing
files that are truncated versions.

Also, I've learned that diff, diff3, and sdiff have capabilities for
merging different versions of a file, though I haven't dug into the
details yet.

I'll give comm a look though.

On 1/5/23, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> You can look at the comm command for compairing files.
> It does not solve your problem, but might help you getting there.
> Regards, Willem
>
>
> On Wed, 28 Dec 2022, Linux for blind general discussion wrote:
>
>> Okay, I have two related issues, one regarding comparing text files
>> and one regarding the contents of a single text file, and in both
>> cases, I'm mostly working with transcripts of conversations I had with
>> an AI language model that I'm trying to clean up.
>>
>> For the first issue, mostly caused by sometimes saving a transcript at
>> a dozen points in the conversation, let's say we have two versions of
>> a file A and B.
>>
>> Ideally, B contains everything contained in A plus some extra content
>> not found in A. Since A has no unique content, it can be deleted
>> safely.
>>
>> By extention, ideally, if I have a dozen versions of a given file, the
>> above would hold for every link in the chain, and I could just do a wc
>> on the files and delete all but the longest file.
>>
>> Problem is, I can't be sure A doesn't have contents not found in B,
>> and on top of that, the file names aren't always descriptive, so it
>> isn't obvious when I should even try comparing the contents of two
>> files.
>>
>> I suspect diff has an option or set of options to detect when one or
>> both of a pair of files have unique contents, but diff's lack of batch
>> processing would make using such a bit of a pain even just running it
>> on the file pairs I know to be similar.
>>
>> Is there either a utility that will compare every pair of files in a
>> directory looking for contents found in one but not the other,
>> deleting files with no unique content or a way to have a bash script
>> loop through a directory with diff to do something similar?
>>
>> Does something like
>>
>> for file 1 in *.txt file2 in *.txt; do
>> diff $file1 $file2
>> done
>>
>> or nesting fore loops of this sort even work in bash? I honestly don't
>> know as I don't think I've ever written a script that had to loop
>> through a cartesian product of input files instead of a single set.
>>
>> The other issue is that the AI language model in question likes
>> repeating itself... I might get a dozen responses that are half new
>> and half quoting part of the previous response, leading to a deozen
>> copies of some paragraphs.
>>
>> I know the uniq command can find and remove duplicate lines in a file,
>> but it only works if the duplicates are adjacent, and sorting the file
>> to make the duplicates adjacent would destroy any semblance of the
>> files having an order... plus, I'm more interested in finding
>> duplicates at the paragraph level, not the line level and while some
>> of the files only have line breaks at the end of the paragraph, others
>> have line breaks mid paragraph... Also, it would be nice if, instead
>> of just deleting the duplicate paragraphs, the tool I use to automate
>> tracking them down replaced the duplicates with a marker indicating
>> the starting line number of the original and the first 40 or so
>> characters of the paragraph to facilitate wanting to either move the
>> duplicated paragraph to one of the later occurances or deciding to
>> keep some of the duplicates for one reason or another.
>>
>> Anyone know of any tools for locating repeated content in a file
>> without the limitations of uniq?
>>
>> And for either issue, I would prefer a command line solution.
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

