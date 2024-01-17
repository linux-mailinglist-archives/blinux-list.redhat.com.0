Return-Path: <blinux-list+bncBCVPTHE7K4IJTIU5VUDBUBG4VYXOK@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id E142182FF74
	for <lists+blinux-list@lfdr.de>; Wed, 17 Jan 2024 05:01:30 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-68058b0112csf213725296d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 16 Jan 2024 20:01:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705464090; x=1706068890;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=suhqACp1yXx2dA3Iza6J1POw+8Z45LK7uK5Ii+JI/W4=;
        b=sKt9b0gzGp3UxYhZLq85u7NXpQ377vaQE2iEAp0QHnhGcRD5/4O0YP8hPDOGM63MtV
         fvFMq9utiksrAPRR0D7Lr7mqf5+34wdEiktGOfRguYLCkak5Fgfqxn/0yEeu2ZJ+Tn3G
         B3znS5T8WSD/IIgALgGy8aKudA65MOXgICsqlwCdS//f0G1ENm8j6UOnIwv4hUiOlv4e
         ELDt1PrR2s05K9dy4nHhLS6S7fPMGgeyMEtRiEThd1Acyac39RGeXezC6B7zqwA3r0Km
         tM/2ZG3FbOHBxuGwNtx4w3SjhjnCAkXV/neq6tnpLhfmGZSqD/5CBXIvP4Mk69HedxZz
         XPFw==
X-Gm-Message-State: AOJu0YwKgz0a/hrciXcq/Dn5dymMeha4eZ4UhdpriM3RWWiON1UEpdgG
	k3b5hui6LIEzzpXaxIz+jdDXB9S4kNJnqA==
X-Google-Smtp-Source: AGHT+IH/lZrWXSq23D7KcXK71cM2iMLFS0uinE6JHGJbeEYCFBvvr98KudpoJveXT2SqLz+h5H5nYw==
X-Received: by 2002:ad4:5968:0:b0:680:114b:f9f5 with SMTP id eq8-20020ad45968000000b00680114bf9f5mr9514428qvb.86.1705464089627;
        Tue, 16 Jan 2024 20:01:29 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:b3d4:0:b0:67a:203f:dbc7 with SMTP id b20-20020a0cb3d4000000b0067a203fdbc7ls1337143qvf.1.-pod-prod-06-us;
 Tue, 16 Jan 2024 20:01:28 -0800 (PST)
X-Received: by 2002:a05:620a:158a:b0:783:4b7e:10f3 with SMTP id d10-20020a05620a158a00b007834b7e10f3mr7812225qkk.24.1705464088711;
        Tue, 16 Jan 2024 20:01:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1705464088; cv=none;
        d=google.com; s=arc-20160816;
        b=S0XZhrhpFw7WCNZrLhdsQrg7R2R8B1I98kMVomYTwgnuQh4mH/jEZfemA5rYDoIuFs
         hQvXUur664hsVUjfNF9RUafwjsZpOuagzr85zA7P+JiL3t8jJ4AVV85Vjd5YSRQ9iNUN
         Yh+A6TUZib6pxIh9RbTe4GVV/HbPw7PGbtBkgr01XpI9ksdd++XGsKCRK1iU5s1zyq1L
         iJweOOV7Saq2AQSltuoFbJcLcTwBKqm2GtN0eR6xZ8VmgbT1oYHixX+sdotU7QfxZtbT
         TaEWBNQwQrK6UF7teMe0iSlp4LcwJ/iNV2YKlAIXjq/G3VXbR2F7mmcyuH8owaox2M+t
         KAOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=suhqACp1yXx2dA3Iza6J1POw+8Z45LK7uK5Ii+JI/W4=;
        fh=5BGpd9k4y8F62sA2rfcSjN7zgK8lTBpG/Wr3HsCq4Ec=;
        b=fznLIHpJQz1k8HnVHSIlohIWFsnPQ8ENP7wQsGW/ZQfebEIqF6tIp90SglxvhxND3+
         aPkdYwD0a/S3Y/qTdy5nnEcVDq0ghHqh7AcDz7k+8tSO44Sk8Cxp3z6ZNwzqg0h3zirM
         tahV0n2PDKth3gZNLVHasWp7+f7JkJXly8vdvoWfujM6tjC35i8mHECXTGvRLOnjVBRv
         jENt6hBnoajUaKKwGNjBWocPDgIikoSKmMuRjDhF633IjevLg9CPA8lnApGeehHtPmGD
         72wBN0y421SjOxTFCdNiwYtWYXKpXkjKQDsyjojhLzCoej+8GNkxX1NjSN5n92kr16VG
         bYRQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id du32-20020a05620a47e000b0077f10ed7a98si10399290qkb.489.2024.01.16.20.01.28
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 20:01:28 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-433-ayax7qzONfakvBs9YYxftw-1; Tue,
 16 Jan 2024 23:01:27 -0500
X-MC-Unique: ayax7qzONfakvBs9YYxftw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D8B8229AB3F1
	for <blinux-list@gapps.redhat.com>; Wed, 17 Jan 2024 04:01:26 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D5A39492BFA; Wed, 17 Jan 2024 04:01:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD673492BE6
	for <blinux-list@redhat.com>; Wed, 17 Jan 2024 04:01:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ADAFC85A589
	for <blinux-list@redhat.com>; Wed, 17 Jan 2024 04:01:26 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-47-eteXa3CEMdO9mJk84XiScw-1; Tue,
 16 Jan 2024 23:01:24 -0500
X-MC-Unique: eteXa3CEMdO9mJk84XiScw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 55D0540508;
	Tue, 16 Jan 2024 23:01:23 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 22EAC1001AD; Tue, 16 Jan 2024 23:01:23 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 213EC1000B6;
	Tue, 16 Jan 2024 23:01:23 -0500 (EST)
Date: Tue, 16 Jan 2024 23:01:23 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Tim Chase <blinux.list@thechases.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: alpine and gmail,   was  a question  about email clients?
In-Reply-To: <ZY2NxT23qm2gJZMq@thechases.com>
Message-ID: <Pine.LNX.4.64.2401162252340.235084@users.shellworld.net>
References: <Pine.LNX.4.64.2312280043090.4143862@users.shellworld.net>
 <ZY2NxT23qm2gJZMq@thechases.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Hi all,
This effort has needfully expanded since I first asked.
Having no direct access to Linux, only via shell services, i ended up 
being very thankful that a member of Toronto's local Linux group likes to 
play with mail setup.
He created an ssh door into one of his machines, where in turn alpine is 
being used to reach my gmail account via imap.
However, there are a few odd things.  Ron has never used alpine before 
finding some elements confusing.
one surprising problem seems to be getting anything saved to the trash, 
others are having this issue as well.
Another odd thing I am noticing is that I cannot remove anything from 
spam.
Things can be deleted from my main all mail gmail folder, but when i reach 
the one gmail created..it has a folder called important for example, I 
cannot remove any spam.  I also cannot, as one could with the basic html 
web interface, shift items that are not spam back  to the inbox.
I can save them somewhere else, but they still remain in my spam folder if 
all that makes sense.
Anyone using alpine in a comparative way managing to get things into the 
trash folder?

Thanks,
Karen



On Thu, 28 Dec 2023, Tim Chase wrote:

> Tim here.  There are a number of parts involved in email, and
> managing the email depends on any/all of those bits.  Beware, a bit
> of a flood of info falls below (you've never known me to be anything
> but prolix)
>
> On the user-facing end of things, you have your "mail user agent"
> (MUA).  This either stores mail locally to where it's running or
> it access a remote folder-structure via IMAP (or, if you're stuck
> with Microsoft, they created their own MAPI protocol just to make
> it hard to interoperate).  If you keep your mail locally, you can
> either fetch it from a remote machine (usually via POP3), optionally
> deleting it from that remote machine; or you can just have a local
> cache with the authority being kept on the remote mailserver,
> accessed via IMAP.  Mail can be kept locally in a number of common
> formats, but most frequently you'll find "mbox" (a single file acts
> as a folder holding all the messages) and "Maildir" (each message
> is in its own file) formats.
>
> Email management can happen either on the mail-server itself where
> the admin might define rules like "mail coming from this server is
> always spam, just delete it before users ever even see it"; or mail
> management can happen in the local MUA where you can manually
> move/copy/delete messages, or set up filters to run (automatically
> or manually) to take some of the druge-work out of it.
>
> When you send mail, some programs just submit to the local system
> utilities for sending mail and let it worry about getting the mail
> to the other end.  Other times your MUA talks directly to a mail-server
> via SMTP to send mail.  Since it involves mail-servers talking to
> other mail-servers, so either side can institute management decisions
> in the process.
>
> It sounds like you're SSHing into a remote machine and running
> Alpine there where it talks directly to the Gmail servers via IMAP
> (where the mail remains on Google's servers).
>
> Gmail does some internal IMAP trickery to present each label as an
> IMAP folder, so deleting a message from a label-folder is more like
> removing the label; and copying a file to a label-folder is like
> adding a label.  Though it should still have some common-type folders
> (there's no standardized naming) like "Trash" or "Deleted Items",
> "Junk" or "Spam", "Drafts" or "Queue", etc.
>
> So when you ask "which system matters?" they all do in a way.
>
> However, message *sorting* (the order in which they're presented;
> different from filtering or categorizing) is usually a MUA thing.
> The Gmail web interface might sort one way (IIRC it does a top-level
> priority-based sort, and then sorts by a user-defined method inside,
> such as by received-date or thread) while Alpine (or mutt/neomutt
> or aerc or Thunderbird or whatever) should be able to sort by
> whatever aspects you prefer (date, recipient, thread, etc).
>
> Hopefully that makes sense?
>
> -tim
>
>
>
>
> On 2023-12-28 00:56, Karen Lewellen wrote:
>> Hi All,
>> Going  to ask this carefully, so as to avoid confusion.
>> Given that there are different email clients, alpine, Thunderbird,  and the
>> like, what actually determines how email gets managed, the client, or the
>> source?
>> there is a member of the greater Toronto Linux  users group who has set up a
>> mail server where I use alpine to access gmail.
>> However, because he has never used alpine, nor has he used basic html in
>> gmail, he is basing the expected sorting on the standard gmail process. that
>> process does not use folders at all, but labels apparently.
>> as a result,there are things I imagine alpine expects to find which is not
>> here.  We are using imap for gmail, but my personal experience of imap,
>> based on dreamhost, still has a mail folder with  saved messages, sent mail,
>> postponed messages probably spam etc.
>> and an imap folder which has other elements unique to dreamhost.
>>
>> I would guess Thunderbird has its own sorting system.
>> My question is this.
>> If you are using imap for gmail, or yahoo mail or whatever, in a client like
>> alpine or Thunderbird which system matters, the source where the email comes
>> from, or the client you are using?
>> Hope question is clear,
>> Karen
>>
>>
>

