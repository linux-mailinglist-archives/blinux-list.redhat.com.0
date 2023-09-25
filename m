Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E9C7AD850
	for <lists+blinux-list@lfdr.de>; Mon, 25 Sep 2023 14:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695646544;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ie5DIb8I2LcqudSMxH66r0BHWla+p8J88wBlLan3ekY=;
	b=TAmEeYmhfpyuiVQHkwPZnWDQlksC8Q2tjHzKwhP5GntefXOHQ3lbIZHKfO94Oe+Hx2VVQr
	uCNfD7waD74GJ+8VItc950OdSG6Xrzi6KRXDM4GNEUWdfwq3ea5FBEfM+VDogIJOxtuykw
	QSxzi+Azce6tTFy1Un1AytZosNhPP9w=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-352-smdCja6vMI2aKtGQbE_TlA-1; Mon, 25 Sep 2023 08:55:41 -0400
X-MC-Unique: smdCja6vMI2aKtGQbE_TlA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 186F03816C80;
	Mon, 25 Sep 2023 12:55:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3809851E3;
	Mon, 25 Sep 2023 12:55:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7578819465A8;
	Mon, 25 Sep 2023 12:55:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Talking Images for 64-bit Laptop
In-reply-to: <mailman.2216.1695421961.2242620.blinux-list@redhat.com>
References: <mailman.2112.1695416202.2242621.blinux-list@redhat.com>
 <mailman.2216.1695421961.2242620.blinux-list@redhat.com>
Comments: In-reply-to Linux for blind general discussion
 <blinux-list@redhat.com>
 message dated "Sat, 23 Sep 2023 00:20:12 +0200."
MIME-Version: 1.0
Date: Mon, 25 Sep 2023 07:55:06 -0500
Message-ID: <mailman.291.1695646516.4021078.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <11577.1695646506.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am not sure what is wrong but everything looks normal in the
image-getting phase.  I lifted this right out of the handbook:

wget https://slackware.uk/slint/x86_64/slint-15.0/iso/slint64-15.iso
wget https://slackware.uk/slint/x86_64/slint-15.0/iso/slint64-15.iso.sha256

	The results are as follows:

--2023-09-25 07:18:15--  https://slackware.uk/slint/x86_64/slint-15.0/iso/slint6
4-15.iso
Resolving slackware.uk (slackware.uk)... 216.119.155.61, 2a02:2498:e004:2a::a861
Connecting to slackware.uk (slackware.uk)|216.119.155.61|:443... connected.
HTTP request sent, awaiting response... 404 Not Found
2023-09-25 07:18:16 ERROR 404: Not Found.

--2023-09-25 07:18:16--  https://slackware.uk/slint/x86_64/slint-15.0/iso/slint6
4-15.iso.sha256
Resolving slackware.uk (slackware.uk)... 216.119.155.61, 2a02:2498:e004:2a::a861
Connecting to slackware.uk (slackware.uk)|216.119.155.61|:443... connected.
HTTP request sent, awaiting response... 404 Not Found
2023-09-25 07:18:17 ERROR 404: Not Found.

	In the past, I have occasionally had urls fail and it was
my fault because I had written some perl code to make reading
email messages and the like read more smoothly by removing some
8-bit charactors.  This did, in fact clean things up but it's
like fire, a wonderful servant but a terrible master.  It made
things look fine but sometimes altered punctuation marks and
special symbols so that they were either missing or mangled and
so I thought I had gotten rid of that helper code I had written
for the output handler so I don't know if that bug has bitten
again or what.
urls are where this happens most often.

	I put a textual screen shot of how the wget went so
whatever happened, it is sneaky.

	Anyway, thank you for your help.  I am sure that this
should get working soon as I believe that system is probably okay
except for the corrupted Windows drive and I may have to find a
usb instance of Windows 11 for that issue but that's for another
list about the care and feeding of Windows 11.  For here and now,
the only problem is that the wget is coming up with 404's all
round.

Martin

Linux for blind general discussion <blinux-list@redhat.com> writes:
> Hi Martin,
> 
> to clarify, I have provided an image of an installed system as you 
> requested:
> https://slackware.uk/slint/x86_64/slint-14.2.1/minislint/README.minislint
> but it was for a previous Slint version.
> 
> You'd be better off installing the most recent version in an USB stick 
> (or a SD
> card in an USB enclosure)  as indicated in:
> https://slint.fr/en/HandBook.html#_install_slint
> 
> Cheers,
> Didier

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

