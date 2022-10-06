Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E711A5F6B45
	for <lists+blinux-list@lfdr.de>; Thu,  6 Oct 2022 18:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665072763;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4oQ2dM1YDicS8bVChYLiFegoV+oO5+OjsR7YwrMxwJo=;
	b=haadHEiX3rFmgE+bWI0NGpLfv6aXCXSpGyIsUVgqtxxfm/ZnilHiI+TKBov+AT9hyK0TMM
	n5C06BaVmi46EAwjNg1qGS6lOpWk5kOaZgImn5CFchbP60GHlLY3evDzZrNtOAOqLDaJpn
	9i66tDlFIuRLpR7l6+Io/Nbk/FM0it4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-628-gLp3UPHTNSiKw7-7QrYKZA-1; Thu, 06 Oct 2022 12:12:41 -0400
X-MC-Unique: gLp3UPHTNSiKw7-7QrYKZA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 49D8F855306;
	Thu,  6 Oct 2022 16:12:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4EF96145888E;
	Thu,  6 Oct 2022 16:12:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B18841946A42;
	Thu,  6 Oct 2022 16:12:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: tdsr
Date: Thu, 6 Oct 2022 11:12:25 -0500
References: <mailman.5306.1664889720.6075.blinux-list@redhat.com>
 <mailman.5193.1664891202.6080.blinux-list@redhat.com>
 <mailman.5272.1664915489.6083.blinux-list@redhat.com>
 <mailman.5680.1664947080.6075.blinux-list@redhat.com>
 <mailman.5502.1664977583.6083.blinux-list@redhat.com>
 <mailman.5759.1665005512.6083.blinux-list@redhat.com>
 <mailman.6024.1665064244.6079.blinux-list@redhat.com>
 <mailman.5978.1665064443.6078.blinux-list@redhat.com>
 <mailman.6012.1665071325.6078.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.6012.1665071325.6078.blinux-list@redhat.com>
Message-ID: <mailman.6206.1665072750.6080.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Since tdsr is started by using
./tdsr
from within
/tdsr, how is this done using
~/tdsr/tdsr

> On Oct 6, 2022, at 10:48, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> You can try it the way you show, or just specify the path to the 'tdsr' executable like '~/tdsr/tdsr' or '/home/xxxxx/tdsr/tdsr' instead of 'cd' to the directory.  Once you create the file, log out and back in to test if the TDSR starts automatically.
> 
> 
> On 10/6/2022 9:53 AM, Linux for blind general discussion wrote:
>> And do that using
>> nano .bash_login
>> and write
>> cd tdsr
>> ./tdsr
>> cd ..
>> Is that it?
>> 
>>> On Oct 6, 2022, at 08:48, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>> 
>>> Just create the file.
>>> 
>>> On 10/5/2022 5:31 PM, Linux for blind general discussion wrote:
>>>> Using ls .bash_login
>>>> and sudo ls .bash_login
>>>> I am not finding that file.
>>>> I am in the home directory.
>>>> Am I doing something wrong?
>>>> 
>>>>> On Oct 5, 2022, at 08:37, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>>> 
>>>>> If 'bash' is your login shell, try adding the TDSR startup command to .bash_login in your home directory.  That should avoid the problems Tim indicated when a subshell is invoked.
>>>>> 
>>>>> You may have to create that file if it doesn't exist.  It is documented in the 'bash' manual page.
>>>>> 
>>>>> 
>>>>> On 10/5/2022 1:17 AM, Linux for blind general discussion wrote:
>>>>>> Or might it be easier to install espeakup, or install Fenrir?
>>>>>> I welcome anyone's ideas.
>>>>>> 
>>>>>>> On Oct 4, 2022, at 15:31, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>>>>> 
>>>>>>> Maybe better to keep logging in, go to cd tdsr,
>>>>>>> then type
>>>>>>> ./tdsr
>>>>>>> cd ..
>>>>>>> as I already do.
>>>>>>> What you had written is far too advanced for me, but thank you.
>>>>>>> 
>>>>>>>> On Oct 4, 2022, at 08:46, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>>>>>> 
>>>>>>>> Tim here.  It's a little tricky because, without additional
>>>>>>>> precautions, you open a shell which launches tdsr, which opens a
>>>>>>>> shell inside of it, which launches tdsr, which opens a shell
>>>>>>>> which...you get the idea.
>>>>>>>> 
>>>>>>>> So there needs to be a way for a shell to determine if it's already
>>>>>>>> inside a running session of tdsr.  This sort of thing is usually
>>>>>>>> done through setting an environment variable.  For example, I've
>>>>>>>> done similarly with "tmux", so I have a check in my startup file
>>>>>>>> (e.g. my ~/.bashrc) that tests
>>>>>>>> 
>>>>>>>> [ -z "$TMUX" ] && tmux
>>>>>>>> 
>>>>>>>> So first you'd want to see if tdsr sets an environment variable.
>>>>>>>> The documentation might detail this, but if not, you can dump the
>>>>>>>> environment to a file before running tdsr, then run tdsr, then dump
>>>>>>>> the environment to another file and compare them, like
>>>>>>>> 
>>>>>>>> $ env | sort > a
>>>>>>>> $ tdsr
>>>>>>>> (tdsr)$ env | sort > b
>>>>>>>> (tdsr)$ comm -13 a b
>>>>>>>> 
>>>>>>>> Hopefully this will show a setting something like a "$TDSR" variable
>>>>>>>> that you can check.  Then your ~/.bashrc (or whatever your startup
>>>>>>>> file is) can end with something like
>>>>>>>> 
>>>>>>>> [ -z "$TDSR" ] && tdsr
>>>>>>>> 
>>>>>>>> Because this can go unfortunately sideways, I recommend having one
>>>>>>>> window/console open, editing your ~/.bashrc and then open a *new*
>>>>>>>> window (or log in at another console) to test it.  If all goes
>>>>>>>> right, yay.  If things go sideways, you can quickly flip back to
>>>>>>>> the first window/console, remove that line from your ~/.bashrc, and
>>>>>>>> (re)save it.  This saves you a LOT of hassle if you accidentally
>>>>>>>> create a loop like described at the top of this email.
>>>>>>>> 
>>>>>>>> -Tim
>>>>>>>> 
>>>>>>>> On 2022-10-04 08:21, Linux for blind general discussion wrote:
>>>>>>>>> I have fedora 35, and while in the shell I use tdsr for screen-reader.
>>>>>>>>> To start it, one must use dot slash tdsr.
>>>>>>>>> Is there a way to have this program start whenever logging in at shell?
>>>>>>>>> 
>>>>>>>>> _______________________________________________
>>>>>>>>> Blinux-list mailing list
>>>>>>>>> Blinux-list@redhat.com
>>>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>>>> 
>>>>>>>> _______________________________________________
>>>>>>>> Blinux-list mailing list
>>>>>>>> Blinux-list@redhat.com
>>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>>> 
>>>>>>> _______________________________________________
>>>>>>> Blinux-list mailing list
>>>>>>> Blinux-list@redhat.com
>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>> 
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
>>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

