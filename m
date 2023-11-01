Return-Path: <blinux-list+bncBCFIHJ744YGRBFNKRKVAMGQE6SF2BPI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C867DE5E0
	for <lists+blinux-list@lfdr.de>; Wed,  1 Nov 2023 19:12:39 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-67445c67d5dsf1642216d6.2
        for <lists+blinux-list@lfdr.de>; Wed, 01 Nov 2023 11:12:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698862358; cv=pass;
        d=google.com; s=arc-20160816;
        b=DoIFeIICg+nEhm3VYq+PLhCGsRWkvEGQdtT4nYIPlUFYxQ42wWUPfWVmUOrE6/Mox0
         K0lE8xxR3P7s409sIYVieLcoVD8t6bFSGetpW02rrt03AUhTonaxzlYVsNIfq0UKRCkD
         tVjf2oL/kFq1/nAwP3Miocls3QtgUFjqzfGqPhoKh/GHfsXPhsQUqXHJpf8Qu8Rqptlp
         gXTwe0j17XdbJlGpMxdvWkkCWW5xT9IDnAjkzxmawPJWOq5NeWa3GX2l2W22njrnSHG0
         +Me3NlHlSYG9W+MgJVp6ZuafKSNR0b/DQjD7qswR7ttGvBvsh7wNq4hY9Ha8yRq/SP/a
         EoZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:to:from
         :date:delivered-to;
        bh=IPF3sI55ZpPxCNAJgTOWBq5Zj9bRmcyJOhE2znPav1c=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=oX4q1fthhsBxubUxJpyRjmyuu7847H8PoZuRoxJKJULo0PehBz99noLNWVPiNyEx9t
         i5yKLnd/lUNnN937gUG1m0u/cPcrZv3WYSdNrrAbkGDZYFCVOdEd2PBV3P7+06R4mDrf
         EmCRgEgKrUGHPaWkpFlwlvahf0Wa5IUSLLVC/aQHsrzKDmwE3JJgCliZFOVpEwHD3Azx
         GrjcESty+ijK+QQZmKVVvGg7jWWxb13ZDGP7PQywQpcjJgjdxFpQHAEuH3me91NVen2R
         rgLXNxPAvk7Qa6FiHmM8JXzc5Kq1p1JQnIYvowb46g5pPpnDGsJ1if5FjNR+la8oCf5r
         1rXA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698862358; x=1699467158;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IPF3sI55ZpPxCNAJgTOWBq5Zj9bRmcyJOhE2znPav1c=;
        b=oArmK/aE1JsNPR6mOnq6RWUm+5cYzAsSeq+xXgVPG9NUQpoX0Pj9IAyq2L9YuvUkO/
         HMhN8M6kBTEJwObz+g5uEsf6d+7+lOCC2zDVs05k4D7j37RKnM35JTgagvAGGb2bYthJ
         BK66Ez5paERh/d9SqW8JbHggYBrrfdxtX8onGjiDngAm/DOXU4NZ9P8hiaAf4ZwPlo1j
         ZQ0EFwlquGuN/pI63ePRDukxXdqoQnIpFmSgnQP8DWJQliOMgwYWKWj6CXHxEYtVr34U
         T/xpt+SyOzKOXm3WxDsiHw0Ks8cDxYBAt7EXzk4/e5vt7NWiidl09+c0gCUBEdaem8eH
         p0zw==
X-Gm-Message-State: AOJu0YyJjhsE9Rsw1kCKi7OKyqy7+zvLLPwKqABlhVX1zyC2fMyTDAi8
	q21vTxTpoHF6g2WGD1SANWHNqQ==
X-Google-Smtp-Source: AGHT+IHe9OeoomzVnhq03ibZu8zmVKJXoz+BX6H4v3iAp6sAdu89yAtbWFtWIQAzGj0EoFK+Is1y6A==
X-Received: by 2002:a05:6214:248e:b0:66d:4d04:37db with SMTP id gi14-20020a056214248e00b0066d4d0437dbmr20337913qvb.39.1698862358062;
        Wed, 01 Nov 2023 11:12:38 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:e6cc:0:b0:658:9457:9887 with SMTP id l12-20020a0ce6cc000000b0065894579887ls120134qvn.1.-pod-prod-09-us;
 Wed, 01 Nov 2023 11:12:37 -0700 (PDT)
X-Received: by 2002:a05:6214:767:b0:658:71e1:5490 with SMTP id f7-20020a056214076700b0065871e15490mr18714862qvz.21.1698862357210;
        Wed, 01 Nov 2023 11:12:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698862357; cv=none;
        d=google.com; s=arc-20160816;
        b=ayAPklZ5qSmrVtVDS+xDrojHU2qXojyISNio8c+jc0cwN0GcZf57gzr2xm6qcbl2qR
         syIMxmDG4Oxor94RRcsTXEN4GZLGJL/gc4we1PvIX2HWNgJ2WN15j5LW/9p56QOhA6dq
         TVNFpmSB4UXBTTF0vQw7t0qm1xYo7g+sHMFBoFwsfQN3mFSn7bGvbKRxWQzC87L++Foo
         eiS8EAhDL4gOm+GUgL1wO2BBGodtCRowgwrW5ySW6UKCypqdqAkqhRrm/fT54mq8lGqw
         NdNskhqf65FOEmzLSFG6rxA5Z3nLwy+Jd0x3FMkd3QwD5M/DmIn2iJdXtNaqEoJi20sy
         1nWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to;
        bh=6t3kdTjZ66PYMGDmlfQX2uuSw5La5tY/2eblrG9Qs1c=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=JInS0bgKYBCl4RazC7EqWAO4dTzq76FwzYSr46N1AwWquAGksU+4NCG6GiUVuqTBdp
         JOIoAcrLhRSiOg4RklJgacyIvXoRv+kla6UPGZlPzXbWRcpnshsa7ObXW6K7qubn3H3L
         p9D5gnMomMbku66yJOe3MaW16/xhmwkz/yCfI+qZPxmk9xDL7huhUtD1uQjkuUVwwEKg
         vlAhRWXJY/gK7KMwscVtVe2CwEf9uRQTRVn7Qt5zzcQJP5LCPaO11frjri1Sm74w44fR
         AtV+4TzYPetfEw0aX72xVMY+M1XLaiiNfKkTAJYquWIDpVEvqEuwg1zucmJGMX/qqIJs
         hh6g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id d18-20020a0cf6d2000000b0067464e223d1si3074592qvo.222.2023.11.01.11.12.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 11:12:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-686-9zVc5RBfM_eLmHVqrFaWKQ-1; Wed, 01 Nov 2023 14:12:35 -0400
X-MC-Unique: 9zVc5RBfM_eLmHVqrFaWKQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 881DA185A781
	for <blinux-list@gapps.redhat.com>; Wed,  1 Nov 2023 18:12:35 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 845C125C0; Wed,  1 Nov 2023 18:12:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E619134
	for <blinux-list@redhat.com>; Wed,  1 Nov 2023 18:12:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 405473C14764
	for <blinux-list@redhat.com>; Wed,  1 Nov 2023 18:12:35 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-308-piSJ8IUKOjul2zICN3oPnA-1; Wed,
 01 Nov 2023 14:12:31 -0400
X-MC-Unique: piSJ8IUKOjul2zICN3oPnA-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id ab547714
	for <blinux-list@redhat.com>;
	Wed, 1 Nov 2023 18:12:31 +0000 (UTC)
Date: Wed, 1 Nov 2023 13:12:31 -0500
From: Tim Chase <blinux.list@thechases.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: simple 7zip extract command?
Message-ID: <ZUKVDwfPu22GQ_6e@thechases.com>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2311011208480.3174618@users.shellworld.net>
 <ZUJ-iVvXdYAijXS3@thechases.com>
 <Pine.LNX.4.64.2311011326200.3176199@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2311011326200.3176199@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: thechases.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: blinux.list@thechases.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux.list@thechases.com designates 54.39.151.74 as permitted
 sender) smtp.mailfrom=blinux.list@thechases.com
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

Tim again.  You're correct.

If you're concerned about what it will do when you uncompress it,
I'd make a subdirectory, move the .7z file in there, and decompress
it there.  If for some reason there are other files in it, they
won't litter your current directory.  That would be the value of
listing the archive contents first, to see if there's one file or
multiple files contained in the archive, or if the file(s) reside
within a subdirectory in the archive, so unpacking them will keep
them contained rather than littering your current working directory.
If it puts them in a subdirectory, fine; if it doesn't, creating
one before unpacking the archive can prevent it from overwriting
things of import. You can then always use regular commands like
"mv" (or "move" in DOS) to move the files back up one level if you
need.

-tim

On 2023-11-01 13:31, Karen Lewellen wrote:
> Hi there,
> Given the file  is of wordperfect from a reliable source, I feel confident
> it is fine, having no desire to list the files in the program.
> so, I can run
> 7z t c:\corel\corelw62.7z
> 
>  and test the archive integrity,
> then 7z x c:\corel\corelw62.7z
> to extract the file into the corel directory?
> thanks much!
> 
> 
> 
> On Wed, 1 Nov 2023, Tim Chase wrote:
> 
> >Tim here.  The command-line iterface should speak pretty well.  You
> >can use the "t" command to "test" the archive's integrity
> >
> > $ 7z t my_archive.7z
> >
> >or the "l" command to list the files in the archive before extracting
> >them:
> >
> > $ 7z l my_archive.7z
> >
> >Once you know the contents are what you expect, you can use the "x"
> >command you showed to extract the files:
> >
> > $ 7z x my_archive.7z
> >
> >The output is a bit verbose with some copyright info, archive
> >self-integrity testing, and some stats about the archive. But all
> >the output should be pretty speakable.
> >
> >-tim
> >
> >
> >On 2023-11-01 12:12, Karen Lewellen wrote:
> >>Hi All,
> >>imagine some here use 7zip to extract files in Linux.
> >>I have an archive of a program that I want to extract, keeping all of the
> >>sub directories in tact.
> >>The file  was compressed with 7zip, that I have not used before.
> >>My google  suggests  something like
> >> 7z x file.7z
> >>will do the trick, but wanted to ask as I am unsure how well the program
> >>will speak.
> >>ideas?
> >>Thanks,
> >>Karen
> >>
> >>
> >
> >-- 
> >You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> >To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> >
> >

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

