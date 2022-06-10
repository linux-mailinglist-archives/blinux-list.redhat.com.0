Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9BA54681A
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jun 2022 16:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654870533;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=FlXY+vPmxjmA77qjbayYKiXYEidatw7c9zOLptReEUI=;
	b=L40Kix5Q7HIj+IfCCaYQblq1gh18bwNl5jE/osXjisjnhhfCF1oJpG8YeIuqLUNrdp+Wrk
	t0Pk6tC4Wg0nJhJZ81LdbMlVtrjXFMfNo/TKyj7k/zXvSlP24hx4sIK1VH5EKdjEzhrutP
	7SjCDcZY58o0HZjLPUsiptMP5Vv02ts=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-488-OzHEsGcCPs2IGXbed7Iqqg-1; Fri, 10 Jun 2022 10:15:29 -0400
X-MC-Unique: OzHEsGcCPs2IGXbed7Iqqg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3477E101AA4D;
	Fri, 10 Jun 2022 14:15:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4503C40CF8EF;
	Fri, 10 Jun 2022 14:15:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 94D751947052;
	Fri, 10 Jun 2022 14:15:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
to: blinux-list@redhat.com
Subject: Re: Buying from System76 or Slimbook?
Date: Fri, 10 Jun 2022 15:15:19 +0100
Message-ID: <mailman.23757.1654870523.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============6078930109991760542=="

--===============6078930109991760542==
Content-Type: text/plain; charset="US-ASCII"; x-default=true

hi
to the best of my knowledge the standard is not accepted.
some vendors  eg. acer dont actually allow secure boot to be disabled.

the bios is inaccessible, its a while since i did stuff on x86 platforms so if this is now not the case its new on me.
so how does a blind person disable secure boot?

yes u can obviously boot anything in a secure boot, but u got to stick keys in the nvram to do it.
 this being the whole point as it were.
thus if  u cannot disable secure boot, ucant install any distro or whatever thats not ms signed.
this is mostof them.
is there a way for blind users to disable secure boot then?

yes what u say about speakup is the problem.
norally u can just rebuild the kernel at worst, and re-install speakup.
eg. i do this with armbian.
and also on the ubuntu used by hard kernel for the odroid n2.
with a secure boot, where the kernel is signed by ms u cannot do this, since u cant insert modules, not signed. 

i assume this is also a problem with fedora, who the last of there distros i used, which was 23, didnt put speakup in by default. 

so if u cannot disable secure boot either from being unable to access the bios.
or the vendors dont allow it to be disabled,

u 
a) cannot install many linux distros,
and 
b) cannot install modules eg. speakup if not provided.

so whilst i apologise for this going way off the original question.
if u got a way to disable secure boot, without the bios which is totally inaccessible.
 
it would be very handy to know!

best regards
neil foster

>
>I've done some research, and according to the standards set when MS
>reliesed Windows 8 and Secure boot became a thing, the EFI Bios have
>to have a way to disable Secure boot.
>
>
>I know that both Ubuntu and Fedora can function in a secure boot
>environment. It is possible to make other Distros do the same, though
>it's apparently a royal pain to do.
>
>There are four major reasons for me wanting to use Fedora in place of
>Ubuntu.
>
> * Firstly, Ubuntu's over reliance on snapd, something I really, really
>   don't appreciate.
> * Secondly, the fact that Fedora has a vanilla implementation of
>   Gnome, where as on the other hand Gnome in Ubuntu is referred to as
>   FrankenGnome by quite a few.
> * Reason 3 is the fact that Ubuntu removed speakup from their kernel,
>   obviously something that should be anathema to a blind console user.
> * Reason 4 is probably petty of me, but I just don't really like
>   'apt-get'. 'dnf' is just easier to use, and less work overall.
>
>Ok, maybe I could just stick to Ubuntu, and I'll probably do so for the foreseeable future. Me being lazy is a factor.
>Warm regards,
>
>Brandt Steenkamp
>
>Sent using Thunderbird from Windows 11
>
>On 2022/06/09 16:19, Linux for blind general discussion wrote:
>> hi, i realise this is veering off the question originally asked but,
>> 
>> yes canonical aka ubuntu got a kernel signed by ms so it uses the keys already in the nvram.
>>   a standard linux distro doesnt last i heard and u cannot boot with secure boot.
>> unless u add the keys for it yourself.
>> archlinux definitely wont.
>> 
>> in other words for most linux distros u got to switch secure boot off instal the os, then u can enable secure boot if u want to.
>> this isnt always possible eg. i think acer dont allow it.
>> even if u can access the bios that is!
>> 
>> things do change fast so my information might be out of date in which case apologies,
>> but i'd check first before parting with dough...
>> 
>> do u mind if i ask y u want to use fedora?
>> ubuntu use strong stack protection, so adding extra modules eg speakup can be a bit of pita, on sbc and so on.
>> but apart from the package managers
>> yum/dnf vs apt-get and et al, they're both much the same thing.
>> 
>> good luck with it any which road.
>> regards
>> neil foster
>> 
>>> Hi,
>>> 
>>> I am currently running a dual boot setup with Ubuntu and Windows 11
>>> both booting fine from secure boot.
>>> 
>>> I was thinking about replacing Ubuntu with Fedora, but if it ain't
>>> broke, don't fix it.
>>> 
>>> Warm regards,
>>> 
>>> Brandt Steenkamp
>>> 
>>> Sent using Thunderbird on Ubuntu
>>> 
>>> On 2022/06/09 01:23, Linux for blind general discussion wrote:
>>>> apologies if this isnt relevant, but similar idea though different supplier.
>>>> got a ryzen 3400g based desktop from ccl over here in the uk.
>>>> installed archlinux on it.
>>>> as long as its not secure boot, linux distros will nowadays instal on most x86-64 based systems.
>>>> only glitch i had was soundcard was card1 since hdmi was card0, was a bit ugg.
>>>> had to ssh in and sort it.
>>>> 
>>>> get cheap hdmi monitor and then u can ocr it if it hangs and thers no sign of life.
>>>> same as  u can ocr a screen capture on a vm.
>>>> 
>>>> anybody who sells pc without os should be ok, just if its secure boot it can be difficult/impossible.
>>>> 
>>>> ta
>>>> neil foster
>>>>> I purchased a computer from System76 and then installed Slint on my own. They were very fast and kept me updated every step of the process.
>>>>> 
>>>>> Ashley Breger
>>>>> 
>>>>>> On May 31, 2022, at 1:05 PM, Linux for blind general discussion<blinux-list@redhat.com>  wrote:
>>>>>> 
>>>>>> Ã¯Â»Â¿Hi all,
>>>>>> 
>>>>>> For future considderation, which is the better buying experience, System76.com, Slimbook.es, puri.sm, or any other specialist Linux computer building company?
>>>>>> 
>>>>>> I have never actually purchased a Linux first device, it's always something running Winbloat, unfortunately needed for making my living, but that's what VM's is for.
>>>>>> 
>>>>>> If anyone has bought a machine from any of the Linux specialist companies, please let us know about your buying experience. I, for one am curious.
>>>>>> 
>>>>>> -- 
>>>>>> Warm regards,
>>>>>> 
>>>>>> Brandt Steenkamp
>>>>>> 
>>>>>> Sent using Thunderbird from the Slint laptop
>>>>>> 
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>> 
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>_______________________________________________
>Blinux-list mailing list
>Blinux-list@redhat.com
>https://listman.redhat.com/mailman/listinfo/blinux-list


--===============6078930109991760542==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

--===============6078930109991760542==--

