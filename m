Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 9944A12B0BF
	for <lists+blinux-list@lfdr.de>; Fri, 27 Dec 2019 03:49:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1577414974;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=S7C31Fpb4pbV5FQVpen4d73P/nPaFWd7ty3SJCZzcco=;
	b=XOJ6/tNLzIfxeRCtbDlmilcnT4AKy7mpDNFO4iUycef338NNyGvK/DTVrAA5BxAnqBIfle
	phOmAEVHz0Wb9UgjvQzpCJxvJTZCRPmbHUWN9qyYeG3qBF7sam6VjjSl9TQdr2utKmaGY5
	pqIfTDFKj+emMxe0cMzufV15pxcZ5JM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-ioDoweqkM_iaHzOQFfNFzw-1; Thu, 26 Dec 2019 21:49:31 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46591185432C;
	Fri, 27 Dec 2019 02:49:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8CD451000329;
	Fri, 27 Dec 2019 02:49:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5996F4E16F;
	Fri, 27 Dec 2019 02:49:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBR2nBS8025728 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 26 Dec 2019 21:49:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 01FDC2026D67; Fri, 27 Dec 2019 02:49:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F13EB2038B80
	for <blinux-list@redhat.com>; Fri, 27 Dec 2019 02:49:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BDA12801E87
	for <blinux-list@redhat.com>; Fri, 27 Dec 2019 02:49:08 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
	[209.85.215.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-201-aA2HwQeJPTe4n91DlJhSeA-1; Thu, 26 Dec 2019 21:49:06 -0500
Received: by mail-pg1-f172.google.com with SMTP id k25so13759605pgt.7
	for <blinux-list@redhat.com>; Thu, 26 Dec 2019 18:49:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version;
	bh=jVoqLp+K1/+NXa4S7VqD4eZ7CF15yUFEiRnn0jpAGG4=;
	b=pc6vFv+WJyjgGscPMHP1IiNQGVxQ1y4yp5XmTUoWnZVRaoVNhW4SQCnoVZ+uxBqHsr
	E6JsfXuxFH7P+VEPH+FL0fxnUPF+zqHI/WH8MThEDNvnwEiOC1IVpYGcbLDr0XA+J176
	rt0viXLHVt2dIsetrKPMFDSExLh1B7MFdDSE6XpjwnDX/s8QfzZYW0Uz5SmGmjHWEG6h
	x6AanV9lJhp5zjy4OV53T4AbGp9MfYHKTsSqe83U8Frn2lY2gicbOo/xspazzqPwbw66
	Y4hcELoK0NcLyTXfWcJ5LdZ5pc6pJR5ZRqLn/eapGNoBmVw4SPP1rcL5mxqerGY2wIBj
	mrog==
X-Gm-Message-State: APjAAAXHukPxVdqtq8cJAO9o6tTtpZQv/q++Ync198uXnOz3T9Z+8VHF
	V+BDK7uT3UIy6DYVqmbA26ZriH8P
X-Google-Smtp-Source: APXvYqxHE0+bzTgTPzpFKPH+4OwB0sDnMfqg9otdDzVvg70OD6Z3aLHS0Nybk6WIHDugYd4qIjslgw==
X-Received: by 2002:a62:2cc1:: with SMTP id
	s184mr51818375pfs.111.1577414945546; 
	Thu, 26 Dec 2019 18:49:05 -0800 (PST)
Received: from [192.168.0.31] (cpe-104-34-133-201.socal.res.rr.com.
	[104.34.133.201]) by smtp.gmail.com with ESMTPSA id
	j18sm35661011pgk.1.2019.12.26.18.49.04 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Dec 2019 18:49:04 -0800 (PST)
To: "Linux for blind general discussion" <blinux-list@redhat.com>
Subject: Re: I question about how does a blind person get speech going on a
	Ubentu System.
Date: Thu, 26 Dec 2019 18:49:03 -0800
Message-ID: <C7F1A5E5-4018-4009-ABD2-B8EF245D0944@gmail.com>
In-Reply-To: <b0cf008e-d9f3-fbd0-9ee5-ce42204852b7@gmail.com>
References: <CF33CC84-F8ED-4994-B8A4-85478733D19B@gmail.com>
	<b0cf008e-d9f3-fbd0-9ee5-ce42204852b7@gmail.com>
MIME-Version: 1.0
X-MC-Unique: aA2HwQeJPTe4n91DlJhSeA-1
X-MC-Unique: ioDoweqkM_iaHzOQFfNFzw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBR2nBS8025728
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Yes it is 18.4.3 I just puled down 19.10 desktop.iso from u of a. 
Maurice Mines.

On 26 Dec 2019, at 18:18, Linux for blind general discussion wrote:

> Do you mean Ubuntu 18.04.3? I haven't tried this version yet, but I 
> got Orca going on an 18.04.1 install a while ago by just hitting the 
> key sequence to start Orca, namely alt+super+s. BTW, this is the same 
> as alt+windows+s.
>
>
> On 12/26/19 5:58 PM, Linux for blind general discussion wrote:
>> Hello my subject line says it all, I am totally blind. I downloaded a 
>> copy of Desktop Ubentu 18.3. This distribution has been installed in 
>> a virtual Machine. After installation the system is running the GUI 
>> Interface. I would like to use Orca four scream Reading access? How 
>> can I due this?
>>
>> Sincerely Maurice Mines.
>>
>> PS this email has been dictated to my Mac Book pro. Please forgive 
>> any mistakes?I hope that this is readable?
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
> -- 
> Christopher (CJ)
> Chaltain at Gmail
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

