Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 2199F41E82
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jun 2019 10:01:44 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id BDBD030CBA9C;
	Wed, 12 Jun 2019 08:00:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C42D5D9E1;
	Wed, 12 Jun 2019 08:00:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3DB721806B19;
	Wed, 12 Jun 2019 08:00:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5C7sGwT017408 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 Jun 2019 03:54:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 655246A494; Wed, 12 Jun 2019 07:54:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx16.extmail.prod.ext.phx2.redhat.com
	[10.5.110.45])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F5E76A492
	for <blinux-list@redhat.com>; Wed, 12 Jun 2019 07:54:13 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
	[209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id AA9203087944
	for <blinux-list@redhat.com>; Wed, 12 Jun 2019 07:53:57 +0000 (UTC)
Received: by mail-pf1-f169.google.com with SMTP id c85so9170999pfc.1
	for <blinux-list@redhat.com>; Wed, 12 Jun 2019 00:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=references:user-agent:from:to:subject:in-reply-to:date:message-id
	:mime-version; bh=dvTTdQ3uBLnO6KGeW8IZ9bMLyMl5hZVlILqlbYpvaOI=;
	b=OwU7gCshrafGAHlZg7l/vHhA99lIMVm6HIY1W/2t8apfTIsFJuDxdKYuWodzSqgyYs
	Mh7KU4yDbbjkecx5uUN2KJHHeINDgzCgw/mgD17/q2vYhUBWicDLP28DaifdTY3VZJQw
	E8Z03RMgrY6ujCQMS+bjk4bnrZsHnBXFwKb6OVJxKHAVFXtOZhV2r3QZx81hXWIbq6nN
	zXgF1wvoBmlhoQ9VeS1ggGtILHjYYm9BT8CPAmNydDmMsya8EDwdT3PPYJ9WBUIqTIMP
	DqMzajFrdCAS+se5/IIVhDqc3odP3u2t7oKpRH+x74CiJGhNZ9NlVVQjxV6QA7vmGoBk
	rVLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:references:user-agent:from:to:subject
	:in-reply-to:date:message-id:mime-version;
	bh=dvTTdQ3uBLnO6KGeW8IZ9bMLyMl5hZVlILqlbYpvaOI=;
	b=QY9NPtdqDx5cKykwD3YyPePauizM2FC/PbbNLQBoi07kbwlULSWzXTSsbGYFPHW1KR
	edxLVIf/rcvdNU/VBlCx5XpV/udCh+a/qqQFvCLaMk6oQudPd3+MzEaf4O+O9aT7z8Ai
	G1kC/KajDncFGGav2TBeGNHw1uCJjbEV7ES9NQ4k9ppv49J7gnhDCr1pOUuwG23M2E4B
	fqmYAyoUfJeTwtrfmhlid7GNT2ObkYzym9xEugcbdXlQ/0M3XH8kf1auLacMeqQ8QMf4
	mX3Rn/pZ5sCzmLTtX0y5WqdzuXHHKZOcziuMhLXfl0AuKN5stuCndQmFKcpdVlr7KjIN
	k1JQ==
X-Gm-Message-State: APjAAAWX0MdllcP4EQ2YFHzVZtmOtS5gT1s2nHrRDNftQlh0YxeGGSjN
	iQpD7zymT4Li7DkBX5mnFGTMyG0N
X-Google-Smtp-Source: APXvYqz08tnPk5g9MMiVOYbXHdYVebaHhUk5CHjWvkvpg7EBBiBxGNkdh9MPTiRFCAKveAlZrUPqBQ==
X-Received: by 2002:a65:56c2:: with SMTP id w2mr24589352pgs.49.1560326036794; 
	Wed, 12 Jun 2019 00:53:56 -0700 (PDT)
Received: from debian ([36.68.53.188]) by smtp.gmail.com with ESMTPSA id
	m31sm12887454pjb.6.2019.06.12.00.53.55 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 12 Jun 2019 00:53:56 -0700 (PDT)
References: <alpine.NEB.2.21.1905281245170.9594@panix1.panix.com>
User-agent: mu4e 0.9.18; emacs 26.1
To: blinux-list@redhat.com
Subject: Re: blind instructions needed
In-reply-to: <alpine.NEB.2.21.1905281245170.9594@panix1.panix.com>
Date: Wed, 12 Jun 2019 14:53:53 +0700
Message-ID: <87v9xbdysu.fsf@gmail.com>
MIME-Version: 1.0
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.45]);
	Wed, 12 Jun 2019 07:53:57 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]);
	Wed, 12 Jun 2019 07:53:57 +0000 (UTC) for IP:'209.85.210.169'
	DOMAIN:'mail-pf1-f169.google.com'
	HELO:'mail-pf1-f169.google.com' FROM:'edhoari.s@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.109  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.169 mail-pf1-f169.google.com 209.85.210.169
	mail-pf1-f169.google.com <edhoari.s@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.45
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-loop: blinux-list@redhat.com
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]); Wed, 12 Jun 2019 08:01:42 +0000 (UTC)

Hello,

Could you explain what kind of instruction you're looking for?

Best Regards
Linux for blind general discussion <blinux-list@redhat.com> writes:

> I'm trying to generate some app-passwords on google and signed into gmail
> and got to my account and then the instructions I was using turned out to
> be garbage.
> I can't even with chromium find the user button to click on it and nothing
> after that user control will appear either.  I tried firefox first and
> firefox was even worse.  The people that wrote the Dell web site are
> working for google now since both sites take you around in circles and
> don't get you to what you're searching for and when thunder storms are
> about to come down I don't appreciate wasting time going around in circles
> under those kind of deadlines where computer and other electrical
> equipment could be damaged.


-- 
Edhoari Setiyoso

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
