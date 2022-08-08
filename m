Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 722C858C8A2
	for <lists+blinux-list@lfdr.de>; Mon,  8 Aug 2022 14:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1659963212;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tsEsPNAbZ1WE07vSwaBAj+Px3XgziZggVgSJlkv4lPs=;
	b=RSGa/GegdkqRiBeJiG6QXFrNex0xJnjZW4/VwBtwiaIsO0sFUtumPkaADFaYAs5g2MrilG
	0wdefNxHlWpAZkqOLah+SO7YZUV17LiSyd/HIt6SJS4jHsM0kUOaK+g987gOOkRLf9X4CZ
	FnTfLTPyIy8cGGKndH6dVPI7+PT+ryI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-518-MPKqCCfNM1qxgQNjKOzbVg-1; Mon, 08 Aug 2022 08:53:29 -0400
X-MC-Unique: MPKqCCfNM1qxgQNjKOzbVg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E53EB957BA2;
	Mon,  8 Aug 2022 12:53:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BC3591415124;
	Mon,  8 Aug 2022 12:53:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6CFD51946A5B;
	Mon,  8 Aug 2022 12:53:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 8 Aug 2022 13:53:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: Console based email and Gmail, any luck?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.40282.1659945837.111210.blinux-list@redhat.com>
 <mailman.1449.1659962856.3159725.blinux-list@redhat.com>
In-Reply-To: <mailman.1449.1659962856.3159725.blinux-list@redhat.com>
Message-ID: <mailman.1450.1659963206.3159725.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Tim


Was trying to get it live via IMAP, and correct me if I'm wron but 
doesn't an app speciic password need me to respond to an 
SMS/notification on my phone every single time I want to use the 
password or not? Sources differ on this with some saying it does, others 
it doesn't


As for the scripts not working, they sent me to 400 or 404 errors, due 
to Google shifting thins around on their end. That's what I meant by not 
working



On 8/8/22 13:40, Linux for blind general discussion wrote:
> Tim here.  Are you trying to access the account live/online or via
> pulling mail locally with something like POP3 or using mbsync/offlineimap
> to sync up mail to a local cache?
>
> As someone else mentioned, the easiest way is to set up an "app
> password", then use that as your login, whether provided in your
> ~/.muttrc for mutt/neomutt, or using those credentials in your
> ~/.mbsync or ~/.offlineimaprc file for syncing the mail to a local
> maildir.
>
> -Tim
>
>
> On Mon, Aug 08, 2022 at 09:03:50AM +0100, Linux for blind general discussion wrote:
>> As it says, any luck with console based clients? All I'm getting is being
>> sent in circles with non working Python scripts and vague blog pages.
>>
>>
>> I'm trying to get Mutt or Neomutt to still work with Gmail post nuking of
>> passwords, but...I can
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

