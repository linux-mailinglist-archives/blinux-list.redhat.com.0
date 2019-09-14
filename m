Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C4EB2908
	for <lists+blinux-list@lfdr.de>; Sat, 14 Sep 2019 02:03:41 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3113710576E2;
	Sat, 14 Sep 2019 00:03:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2729A5C1B5;
	Sat, 14 Sep 2019 00:03:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 37C8A2551C;
	Sat, 14 Sep 2019 00:03:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8E03CPe005973 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Sep 2019 20:03:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ED65260600; Sat, 14 Sep 2019 00:03:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx20.extmail.prod.ext.phx2.redhat.com
	[10.5.110.49])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E7E376092F
	for <blinux-list@redhat.com>; Sat, 14 Sep 2019 00:03:10 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
	[209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 94772308FE9A
	for <blinux-list@redhat.com>; Sat, 14 Sep 2019 00:03:08 +0000 (UTC)
Received: by mail-pg1-f170.google.com with SMTP id u72so16066143pgb.10
	for <blinux-list@redhat.com>; Fri, 13 Sep 2019 17:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=references:user-agent:from:to:subject:in-reply-to:date:message-id
	:mime-version; bh=rjay1UprIuzOz2l200XOGsOdGhr+VpNNxmyjsUA75uY=;
	b=RCCzc6lZggUgkyS9/L4s1oxoCTbgmE4e0mGQS0fseLUrkqdXFPw5sGDeot5XDRD6JM
	4Ejykz9GkLOLMRChAVPQ9T20YWLWKtfcFOJk/CkK3jh8se4b4/qmeWH4eQqlMrE2fqzJ
	c5+WKoB/0PeeqUOH0JMahga0vn7XA9hPL1cJ5t2Kdh38JBI2bVXqp31NNKB6vip2APhT
	W860o3kGpxjS9HEpfpCzKvsvhlibBfls8dBBXUG1AlbAOOnz6DMiXfrNWRlU+aBCe48A
	RQGpnBB9kCmLJKfps0OSYJL3km72EojU6+fNYzQXFRhXmbsGzHN8/DTNxRfoz4nAu0Zh
	BfVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:references:user-agent:from:to:subject
	:in-reply-to:date:message-id:mime-version;
	bh=rjay1UprIuzOz2l200XOGsOdGhr+VpNNxmyjsUA75uY=;
	b=cL6foaVU1Hyf6oZIzfYjDjzRfmhXYC19CrykYlGsrZiXEpNZhZ0ldINfmMOya+EBK+
	9rGkGpJzAlOLnfWI1rzFNKSmnQ5UwV3CatolJc6p33HrJ/OPvC/VtW5sby+KDZpcKaCK
	o9UMk6feD3tbvHKwT1oTlSC9HM0W45aXwAOnHuVIdCFrKOExwGettDy/XIqBS1HbIiYl
	YIG2n41vR7t8Axl+kBa6rVbEc9x8Aa7ABSoOeKuVCDlaGnNE5ajxWfXAk3eTxl1k6Zt0
	qA/zEEeX/gi4Oz1aGDUy1/xSNqsdSJ+VK8LKNPz+P6gIOmoggl8F/jjVXDkTO9a76Iyc
	+kHQ==
X-Gm-Message-State: APjAAAXl589toGsHwcQmUR99gWWUk9ZydMu7wdOFxklsJTOfhZ44sOwD
	8Vv0E+k1Q5hf3ZUaBV1zFEvSBqbP
X-Google-Smtp-Source: APXvYqwUVR0HcB7Ysil3nna2ORBU3hjEk5J/Ra6HrMmMdGpEcg3xFUMTllIFbC2uqni7VgWk4Wk9/g==
X-Received: by 2002:aa7:8592:: with SMTP id w18mr60189559pfn.237.1568419387740;
	Fri, 13 Sep 2019 17:03:07 -0700 (PDT)
Received: from debian ([36.69.11.39]) by smtp.gmail.com with ESMTPSA id
	e189sm27994890pgc.15.2019.09.13.17.03.06 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 13 Sep 2019 17:03:06 -0700 (PDT)
References: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
	<bd79fcc8-262e-b178-1518-cf12f5ba9b6d@F123.org>
	<87zhja4b8g.fsf@gmail.com>
	<ba434a94-0e7b-633c-9a1e-9586f6aa8cd2@gmail.com>
User-agent: mu4e 0.9.18; emacs 26.1
To: blinux-list@redhat.com
Subject: Re: Comunicating from your Linux machine?
In-reply-to: <ba434a94-0e7b-633c-9a1e-9586f6aa8cd2@gmail.com>
Date: Sat, 14 Sep 2019 07:03:03 +0700
Message-ID: <87ftkzvj60.fsf@gmail.com>
MIME-Version: 1.0
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.49]);
	Sat, 14 Sep 2019 00:03:08 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]);
	Sat, 14 Sep 2019 00:03:08 +0000 (UTC) for IP:'209.85.215.170'
	DOMAIN:'mail-pg1-f170.google.com'
	HELO:'mail-pg1-f170.google.com' FROM:'edhoari.s@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.097  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL, SPF_HELO_NONE,
	SPF_PASS) 209.85.215.170 mail-pg1-f170.google.com 209.85.215.170
	mail-pg1-f170.google.com <edhoari.s@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.49
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.64]); Sat, 14 Sep 2019 00:03:39 +0000 (UTC)

You are correct, I'm using telega.el which is unofficial telega client.
It works very well for me so far.
I only interested with things that can integrate well with emacs. 


Linux for blind general discussion <blinux-list@redhat.com> writes:

>> Telegram works fine here using emacs +emacspeak.
>>
>> Is there a specialized client you run to make that work, or can it run 
>> in a regular terminal? The Telegram app I saw was a graphical app, but 
>> I think I don't have something set properly, although I assume it's a 
>> qt5 app, and I had Mumble qt5 working. I would prefer something that 
>> interfaces with Pidgin, so I stick to the phone for Telegram, as I 
>> just didn't look hard enough to find a Pidgin plugin, and Pidgin here 
>> seems to have trouble with voice. That said, looking for telegram 
>> didn't yield a Pidgin plugin, although I do recall seeing a text 
>> client, though it seems it was separate from the "official" (air 
>> quotes there) client.
> ~Kyle
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
