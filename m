Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id A45175832A
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jun 2019 15:13:26 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 496DAA404E;
	Thu, 27 Jun 2019 13:12:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 68F0A196F7;
	Thu, 27 Jun 2019 13:12:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC34B206D4;
	Thu, 27 Jun 2019 13:12:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5RDBKmC030382 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jun 2019 09:11:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F30AC60126; Thu, 27 Jun 2019 13:11:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx04.extmail.prod.ext.phx2.redhat.com
	[10.5.110.28])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ED1AC6012D
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 13:11:17 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 5BB7788318
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 13:10:56 +0000 (UTC)
Received: from rednote.net (localhost [127.0.0.1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id x5RDAtlN003371
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 13:10:55 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net x5RDAtlN003371
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rednote.net;
	s=default; t=1561641055;
	bh=tOlY9mTSuN56na434vmOlZVMeVj2Twn4p7lyqbcdOvY=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=BKBp6wJEvy+tTEdloAgfvE/uECTK8Kz4tBQ2ifajlqyT1kJyAHGdEOQMZaIfI0jT1
	umwfm6V3nm5JMI+tgxF/jsmweA2I5LvCLe2rkXVVh4nVQafqhwVHW1TYDjUGsUqcb6
	Dirj3fG3OoCJj71J3STeZx7AH7+YICKC4VqzTESM=
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id x5RDAsGH003370
	for blinux-list@redhat.com; Thu, 27 Jun 2019 09:10:54 -0400
Date: Thu, 27 Jun 2019 09:10:54 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Using $PROMPT_COMMAND to beep depending on success/failure
Message-ID: <20190627131054.GA3329@rednote.net>
References: <20160420134111.2629abd1@bigbox.christie.dr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160420134111.2629abd1@bigbox.christie.dr>
X-Operating-System: Linux opera.rednote.net 5.0.17-300.fc30.x86_64
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Greylist: Sender passed SPF test, ACL 242 matched, not delayed by
	milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]);
	Thu, 27 Jun 2019 13:11:02 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]);
	Thu, 27 Jun 2019 13:11:02 +0000 (UTC) for IP:'66.228.34.147'
	DOMAIN:'opera.rednote.net' HELO:'opera.rednote.net'
	FROM:'janina@rednote.net' RCPT:''
X-RedHat-Spam-Score: -0.102  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_PASS,
	SPF_PASS) 66.228.34.147 opera.rednote.net 66.228.34.147
	opera.rednote.net <janina@rednote.net>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.28
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Thu, 27 Jun 2019 13:13:25 +0000 (UTC)

I like this idea, but it needs some debugging on my end.

Firstly, I did make sure to get all that code on one line in my .bashrc.
However, I get this error:

play WARN alsa: can't encode 0-bit Unknown or not applicable

Tim Chase writes:
> Stumbled on this one today thanks to @climagic on Twitter.  If you
> want to have your machine give you one tone if the previous command
> succeeded (had an exit-status of 0) and a different tone if the
> previous command failed (had a non-zero exit status), you can put the
> following one-liner in your .bashrc file:
> 
> PROMPT_COMMAND='[ "$?" == 0 ] && play -qn synth sin F3 trim 0 0 0.1
> fade 0 0.1 0.05 vol 0.2 || play -qn synth square F4 trim 0 0.1 fade 0
> 0.1 0.05'
> 
> This uses the `play` command from the `sox` package.  There are a
> number of tweaks you can make to change the tones, timbres,
> wave-form, volume, duration, etc.  The above uses an F3 sine-wave at
> 20% volume for success and an F4 square-wave at 100% volume for
> failure.
> 
> To test it out, use the `true` and `false` commands (they don't do
> anything other than exit with a particular zero/non-zero exit code).
> 
> But here's hoping someone here finds it useful.
> 
> -tim
> 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
