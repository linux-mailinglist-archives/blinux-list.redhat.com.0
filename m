Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 11013B062E
	for <lists+blinux-list@lfdr.de>; Thu, 12 Sep 2019 02:20:12 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id F33B68AC6E1;
	Thu, 12 Sep 2019 00:20:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD8695D6A5;
	Thu, 12 Sep 2019 00:20:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 28DBB180221D;
	Thu, 12 Sep 2019 00:19:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8C0JpgI000867 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 11 Sep 2019 20:19:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 47A0760C57; Thu, 12 Sep 2019 00:19:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx27.extmail.prod.ext.phx2.redhat.com
	[10.5.110.68])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4243E60C05
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 00:19:48 +0000 (UTC)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
	[209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E98F58BA2D4
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 00:19:47 +0000 (UTC)
Received: by mail-pg1-f174.google.com with SMTP id c17so4645861pgg.4
	for <blinux-list@redhat.com>; Wed, 11 Sep 2019 17:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=references:user-agent:from:to:subject:in-reply-to:date:message-id
	:mime-version; bh=oSSJUq9um2vG5nbrcM6BudHTLW7RYP27Thqa2L5bbZ0=;
	b=I63LviyY6KwD6QF0FqSOidn5mqtg3gno5SzY6OaA1jeKcTnW4ptJuKk04EK1hs39bt
	ML/YAtHoZ37CWwn8CLOwjVP09nPLN8bSOAOdmwCGlAMQmXaRbu/O6nk+3yJva+9OBov1
	ci1EepCEne4KKeOK2ekpU8yL/ysGCRCaeifgmzSQXtPMiPpqug5uMtwDF8gPw92M+To2
	IhN0nZXA5MNnSi6zl8hVuxtajlMlbj3Y6kO5ejJjCibBTdLR42t+CzzRFsC+s9jL5eao
	Is5vMC3g4dzD0Fv8EdyhG+mz7VcFemVFljzK+xlL9qJUKu1Xu5+4SS6Pu+RQ5vZXc2Td
	jVUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:references:user-agent:from:to:subject
	:in-reply-to:date:message-id:mime-version;
	bh=oSSJUq9um2vG5nbrcM6BudHTLW7RYP27Thqa2L5bbZ0=;
	b=CH1d+PR5R9th/b55ht92xWsYoO035BX0kgXTPx5AnNRPRZMSSaBH12Mh9mOrnSoKsz
	ctWgaad2KMmkeF2VOz8GqjZXQeuAQtjozST7jCR57WBP3P4Gz6iAsBR8WnSRG+94dTBw
	zl3QcUuPJBtcmNWM9pffx9w0NsncVy81a7gxFj0ZutpH82Fh/Jh2FabEVxbcHHFdQ6aF
	SZJyj8n96VSIBPBwucuXkmkwwMdFjxG5H8Pq0femI70Jdpz1c8C/zel5VdOFiAkHh2Pd
	sT6zqWnYscHuaqtxAPbPfVQalqIOyJzWUKciHArrTtKBQISreRJEWvtwbEZh4jmFkFWp
	+fDQ==
X-Gm-Message-State: APjAAAUmMn1waQBPoh9KvNqeQD1nx/OepO53oRpU1G5/+3VYUoWeSo+w
	hsL7dBDnNmHgqGrW8Ot4QlkIUG1i
X-Google-Smtp-Source: APXvYqz7bk4buquDsGCpMEPcDxqB4XgHqbslDRMacJn7kcpTp+DTcZ4QCwpWI8l+8e2jwaaCsfEfTg==
X-Received: by 2002:a63:cb4b:: with SMTP id m11mr36148562pgi.49.1568247586981; 
	Wed, 11 Sep 2019 17:19:46 -0700 (PDT)
Received: from debian ([36.69.11.39]) by smtp.gmail.com with ESMTPSA id
	127sm45225413pfw.6.2019.09.11.17.19.45 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 11 Sep 2019 17:19:46 -0700 (PDT)
References: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
	<bd79fcc8-262e-b178-1518-cf12f5ba9b6d@F123.org>
User-agent: mu4e 0.9.18; emacs 26.1
To: blinux-list@redhat.com
Subject: Re: Comunicating from your Linux machine?
In-reply-to: <bd79fcc8-262e-b178-1518-cf12f5ba9b6d@F123.org>
Date: Thu, 12 Sep 2019 07:19:43 +0700
Message-ID: <87zhja4b8g.fsf@gmail.com>
MIME-Version: 1.0
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.68]);
	Thu, 12 Sep 2019 00:19:48 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.68]);
	Thu, 12 Sep 2019 00:19:48 +0000 (UTC) for IP:'209.85.215.174'
	DOMAIN:'mail-pg1-f174.google.com'
	HELO:'mail-pg1-f174.google.com' FROM:'edhoari.s@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.097  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL, SPF_HELO_NONE,
	SPF_PASS) 209.85.215.174 mail-pg1-f174.google.com 209.85.215.174
	mail-pg1-f174.google.com <edhoari.s@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.68
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]); Thu, 12 Sep 2019 00:20:10 +0000 (UTC)

Telegram works fine here using emacs +emacspeak.

Linux for blind general discussion <blinux-list@redhat.com> writes:

> I am told that telegram is an option, at least for text messages.
>
>
> Fernando
>
>
>
> On 09/09/2019 02:18 PM, Linux for blind general discussion wrote:
>> Hi everyone,
>>
>> Seeing that Skype, at this time is pretty much unusable, and Google 
>> hangouts and Duo can only, as far as I know be accessed threw web 
>> interfaces, what would you recommend I use in stead?
>>
>> Thanks so long for your help.
>>
>>  Warm regards,
>>
>> Brandt Steenkamp
>>
>> Sent from Thunderbird using Arch Linux
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


-- 
Edhoari Setiyoso

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
