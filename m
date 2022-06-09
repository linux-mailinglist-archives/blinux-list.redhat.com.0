Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F38544E92
	for <lists+blinux-list@lfdr.de>; Thu,  9 Jun 2022 16:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654784375;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=3PeoFo3sJRCOzx3GjH0exluP2LbaCb+tZNTzwVQC20o=;
	b=XsxUWdrqYx3l2ng+QD4xpd23Aw4y0r/yGv5+aspImatwp8d5+mEB73vQjDHi5/guq/J/6i
	CN5dA3xn0Or1qeon9DLYgyXtrGQOE5t889/Dn4FnDgMy/qFyPheNjZGAPbyw/w6e2tuyjT
	cKmovsB+L0wQ2OFwkkcD4rPPy84oQM0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-563-n7GDcWWMOrqNK5FEojCpOA-1; Thu, 09 Jun 2022 10:19:31 -0400
X-MC-Unique: n7GDcWWMOrqNK5FEojCpOA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A52A61DC2427;
	Thu,  9 Jun 2022 14:19:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7ECBE2026D64;
	Thu,  9 Jun 2022 14:19:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 091951947061;
	Thu,  9 Jun 2022 14:19:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
to: blinux-list@redhat.com
Subject: Re: Buying from System76 or Slimbook?
Date: Thu, 09 Jun 2022 15:19:19 +0100
Message-ID: <mailman.23574.1654784364.111202.blinux-list@redhat.com>
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
MIME-Version: 1.0
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============3010396189482636291=="

--===============3010396189482636291==
Content-Type: text/plain; charset="US-ASCII"; x-default=true

hi, i realise this is veering off the question originally asked but,

yes canonical aka ubuntu got a kernel signed by ms so it uses the keys already in the nvram.
 a standard linux distro doesnt last i heard and u cannot boot with secure boot.
unless u add the keys for it yourself.
archlinux definitely wont.

in other wors for most linux distros u got to switch secure boot off instal the os, then u can enable secure boot if u want to.
this isnt always possible eg. i think acer dont allow it.
even if u can access the bios that is!

things do change fast so my information might be out of date in which case apologies,
but i'd check first before parting with dough...

do u mind if i ask y u want to use fedora?
ubuntu use strong stack protection, so adding extra modules eg speakup can be a bit of pita, on sbc and so on.
but apart from the package managers
yum/dnf vs apt-get and et al, they're both much the same thing.

good luck with it any which road.
regards
neil foster

>Hi,
>
>I am currently running a dual boot setup with Ubuntu and Windows 11
>both booting fine from secure boot.
>
>I was thinking about replacing Ubuntu with Fedora, but if it ain't
>broke, don't fix it.
>
>Warm regards,
>
>Brandt Steenkamp
>
>Sent using Thunderbird on Ubuntu
>
>On 2022/06/09 01:23, Linux for blind general discussion wrote:
>> apologies if this isnt relevant, but similar idea though different supplier.
>> got a ryzen 3400g based desktop from ccl over here in the uk.
>> installed archlinux on it.
>> as long as its not secure boot, linux distros will nowadays instal on most x86-64 based systems.
>> only glitch i had was soundcard was card1 since hdmi was card0, was a bit ugg.
>> had to ssh in and sort it.
>> 
>> get cheap hdmi monitor and then u can ocr it if it hangs and thers no sign of life.
>> same as  u can ocr a screen capture on a vm.
>> 
>> anybody who sells pc without os should be ok, just if its secure boot it can be difficult/impossible.
>> 
>> ta
>> neil foster
>>> 
>>> I purchased a computer from System76 and then installed Slint on my own. They were very fast and kept me updated every step of the process.
>>> 
>>> Ashley Breger
>>> 
>>>> On May 31, 2022, at 1:05 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>> 
>>>> ï»¿Hi all,
>>>> 
>>>> For future considderation, which is the better buying experience, System76.com, Slimbook.es, puri.sm, or any other specialist Linux computer building company?
>>>> 
>>>> I have never actually purchased a Linux first device, it's always something running Winbloat, unfortunately needed for making my living, but that's what VM's is for.
>>>> 
>>>> If anyone has bought a machine from any of the Linux specialist companies, please let us know about your buying experience. I, for one am curious.
>>>> 
>>>> -- 
>>>> Warm regards,
>>>> 
>>>> Brandt Steenkamp
>>>> 
>>>> Sent using Thunderbird from the Slint laptop
>>>> 
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>_______________________________________________
>Blinux-list mailing list
>Blinux-list@redhat.com
>https://listman.redhat.com/mailman/listinfo/blinux-list


--===============3010396189482636291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

--===============3010396189482636291==--

