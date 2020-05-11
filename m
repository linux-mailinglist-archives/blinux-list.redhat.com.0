Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 5AF761CE2C2
	for <lists+blinux-list@lfdr.de>; Mon, 11 May 2020 20:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589221767;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kKB+On7PWZRPzConklkigK5wf67o4uKx89wH/71SycU=;
	b=EljgaFErc43vI1u8NqswEZzTyNd6s6FL90W0p8GzUhDJB3m2+PaU/db3MfibNOGC7B59Tr
	8XI7O+Ct6JQg0c725eHRX6c4qp8k6pC69sEY2PCjNnsL0HHXCuDSvQIcVt/7E/v0IXvbJz
	Uojv0jzVb+4dP1zNj1VrWRHDDhRVy4A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-422-ZumSPwTVOf2et9eeDWh_TQ-1; Mon, 11 May 2020 14:29:24 -0400
X-MC-Unique: ZumSPwTVOf2et9eeDWh_TQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1E35C85B677;
	Mon, 11 May 2020 18:29:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D7D55C1B5;
	Mon, 11 May 2020 18:29:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 95A1E4CAA7;
	Mon, 11 May 2020 18:29:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04BIT5bw024531 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 11 May 2020 14:29:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 62BE12029F71; Mon, 11 May 2020 18:29:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5EBF52029F70
	for <blinux-list@redhat.com>; Mon, 11 May 2020 18:29:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AA7311049840
	for <blinux-list@redhat.com>; Mon, 11 May 2020 18:29:02 +0000 (UTC)
Received: from pb-smtp20.pobox.com (pb-smtp20.pobox.com [173.228.157.52])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-26-N6E34f0fMXyfEwadSaA4hg-1; Mon, 11 May 2020 14:28:59 -0400
X-MC-Unique: N6E34f0fMXyfEwadSaA4hg-1
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id C9F66CA038
	for <blinux-list@redhat.com>; Mon, 11 May 2020 14:28:58 -0400 (EDT)
	(envelope-from joelz@pobox.com)
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=date:from:to
	:subject:message-id:reply-to:references:mime-version
	:content-type:in-reply-to; q=dns; s=sasl; b=FS6MW5PM5XPTanIDToN1
	GKX25G/O0u2AQs2PnJ+3iX+mf6uL6rpKnBNl/QUsSeF3LrsiLwhk/6liYSkUheLv
	qWoJhDs9utA1cWwToPNfa+OscGQpjH9Mqgj0Rk+2HUg1TO0qQiA57D6bifEDKKnq
	FROL/8YmaJzC5npNJmdWfGA=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id C1708CA035
	for <blinux-list@redhat.com>; Mon, 11 May 2020 14:28:58 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [66.8.174.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 5D627CA033
	for <blinux-list@redhat.com>; Mon, 11 May 2020 14:28:56 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.89)
	(envelope-from <joelz@pobox.com>) id 1jYD9t-0002cH-7L
	for blinux-list@redhat.com; Mon, 11 May 2020 08:28:09 -1000
Date: Mon, 11 May 2020 08:28:08 -1000
To: blinux-list@redhat.com
Subject: Re: Can anyone recommend an accessible text-mode DAW?
Message-ID: <20200511182808.nikfze7jgmou5yhm@sprite>
References: <CAO2sX30s5_Lwt5seVdXsqY63V+NZ2t8uR2vLVWseHa441YLKWA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX30s5_Lwt5seVdXsqY63V+NZ2t8uR2vLVWseHa441YLKWA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Pobox-Relay-ID: 462D58A4-93B5-11EA-96C7-B0405B776F7B-04347428!pb-smtp20.pobox.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi there,

For handling midi, I can recommend midish, a 
command-line utility. http://www.midish.org/

It's possible to use midish within Nama,
a text-mode DAW. Here's the CPAN link
https://metacpan.org/pod/distribution/Audio-Nama/script/nama

have fun,

joel, Nama author

On Mon, May 11, 2020 at 02:13:24PM +0000, Linux for blind general discussion wrote:
> Okay, so I've had a midi keyboard for a while and if all goes well,
> I'll be recieving a couple of additional midi controllers
> fromKickstarters in the coming months.
> 
> I'm looking for a command-line, curses, or similiar-based Digital
> Audio Workstation application I can use to interface with these
> devices over USB from my desktop or USB or Bluetooth from my Raspberry
> Pi(I currently have a 3B, but plan to upgrade to a Pi 4 4GB as soon as
> I have the money to spare).
> 
> Anyone have any suggestions?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

-- 
Joel Roth

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

