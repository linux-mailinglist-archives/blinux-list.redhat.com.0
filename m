Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CED4EC8C6
	for <lists+blinux-list@lfdr.de>; Wed, 30 Mar 2022 17:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648655421;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4JpklEdcGo4NLXUNoSOFoO84Miia4vOuPk25wNPygtw=;
	b=f7Dfc20z4bcouIAqLa5DrmIKWxBbZBvZWp2I+xmK8cTienY4PJ0R6Y+xAeS/E5Kh7v8DPA
	TtsXptefZLls2mnR5Form2ThZ0IY6Xk8KY8xJajAHyDAhwN3F/KBeep/jv5cDvHK6uiLiA
	LnO1c+pDWR59V8uQ9SU4XPR/WQeAPbs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-540-oE5QGb5qMIyUK8Uu2yUG9g-1; Wed, 30 Mar 2022 11:50:17 -0400
X-MC-Unique: oE5QGb5qMIyUK8Uu2yUG9g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ECA831C0150E;
	Wed, 30 Mar 2022 15:50:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 871A140CF8E4;
	Wed, 30 Mar 2022 15:50:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E86481947BBF;
	Wed, 30 Mar 2022 15:50:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 30 Mar 2022 10:01:30 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Looking for a multiple editor
In-Reply-To: <mailman.5591.1648651427.111206.blinux-list@redhat.com>
References: <mailman.5591.1648651427.111206.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.5393.1648655411.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  You can make batch-changes to files with sed, ed, or
vi/vim (and likely many others, but those are the ones I use).

You don't detail what sorts of changes you need to make, so it's hard
to provide a more complete solution, but some examples:

- if you want to just do a word-substitution through all of your
  files like changing "John" to "Tim", you can use

   sed -i.bak 's/John/Tim/g' *.txt

  Note that it might over-reach changing things like "Johnson" to
  "Timson"

- if you want to move a line *down* in a file, you can also use sed,
  but if you have multiple manipulations (or want to move things
  *up* in a file) you want to execute, you want to reach for one of
  the others I listed.  E.g. if you want to move all the lines from
  the last line containing "Chapter" through the end of the file up
  to the top of your file, you can do it with

   for f in *.txt; do printf '1\n?Chapter?,$m0\nwq\n' | ed -s "$f" ; done

  which goes to the first line in each file, searches backwards for
  "Chapter", then from there through the end of the file ("$"), moves
  ("m") those lines to the beginning of the file (after line 0)

- if your changes are more complex, vim has some very powerful tools
  for manipulating and scripting across all the files you open with
  it,  using the ":bufdo" or ":argdo" command.

I do these sorts of edits all the time, so if you have more details
on the sorts of changes you want to make, I can gladly whip up some
more usable answer.

-tim



On March 30, 2022, Linux for blind general discussion wrote:
> I have a number of texts in which I wish to make alterations that
> are the same for all of them. I think that there is a linux program
> in which I can list the alterations and them have them made. but I
> can't remember what it is called. Please refresh my memory.
> 
> thanks,
> John
> 
> -- 
> John J. Boyer
> Email: john.boyer@abilitiessoft.org
> website: http://www.abilitiessoft.org
> Status: Company dissolved but website and email addresses  live.
> Location: Madison, Wisconsin, USA
> Mission: developing assistive technology software and providing
> STEM services that are available at no cost
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

