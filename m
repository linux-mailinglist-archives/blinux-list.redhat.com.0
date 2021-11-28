Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 245F44609E3
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 21:59:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638133142;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=bDaKVrX/Q3JrB4lfhT9aiLXsxuwf44xoBOoz4i7TG0o=;
	b=DprE60lVKtybuDfju8z/wapDeAu1oxEBMkUQxAaPLcCHh7gmvhBfIdO8ShSL2Br+S4Hzhw
	2Tw+OOwU278l3Fr/b5FZo28OzqrNo4B8f4NkQtDwWOH9s3imW3ADBAO8xxjxkJv5OWNakx
	6Y34kqhW+d7cte+kOciACBg0UjjV9ZA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-479-TSE_h6apOk2rp__rxsagUA-1; Sun, 28 Nov 2021 15:59:00 -0500
X-MC-Unique: TSE_h6apOk2rp__rxsagUA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE6551853024;
	Sun, 28 Nov 2021 20:58:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D7A885D9C0;
	Sun, 28 Nov 2021 20:58:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 87F584CA93;
	Sun, 28 Nov 2021 20:58:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASKwo4k021729 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 15:58:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8EB66401E59; Sun, 28 Nov 2021 20:58:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8AB50401E26
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:58:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 54BCC185A79C
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:58:50 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-325-4hEMmln1OoC4QoQaY_3x4Q-1; Sun, 28 Nov 2021 15:58:48 -0500
X-MC-Unique: 4hEMmln1OoC4QoQaY_3x4Q-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id DEA56620336; Sun, 28 Nov 2021 20:58:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id D98F862029D
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 15:58:46 -0500 (EST)
Date: Sun, 28 Nov 2021 15:58:46 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: WEBM, is it the default option of yt-dlp downloads?
In-Reply-To: <c692751c-9531-b44d-4f30-324fed10f80b@slint.fr>
Message-ID: <Pine.LNX.4.64.2111281548330.113324@server2.shellworld.net>
References: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
	<fda47b2b-0bad-b566-b60d-942b64720311@slint.fr>
	<ed84ed62-9e28-7054-9f49-aa505ada1a1f@hubert-humphrey.com>
	<91c67ade-b15f-7130-5641-980ffc0e1a6f@slint.fr>
	<c692751c-9531-b44d-4f30-324fed10f80b@slint.fr>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: MULTIPART/MIXED;
	BOUNDARY="-1404930036-498971804-1638133126=:113324"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
---1404930036-498971804-1638133126=:113324
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Didier,
On Sun, 28 Nov 2021, Linux for blind general discussion wrote:
> PS and OT: My friend, isn't it time enough that you manage your Linux sys=
tem
> yourself most of the time, not relying on your Linux specialist or Linux
> person, however you call they?
May I ask how you can make a statement about the life situation of=20
another person?
Unless you are thinking that every Linux user is like yourself of course.
The co-working space where my Toronto office is based has a technician who=
=20
we all  rely on to manage the many different tools individuals use on a=20
daily basis...so we can get on with the business of doing our jobs.
Likewise I personally rely on the professional expertise  of those who=20
manage shellworld, so I can get on with what I am expert in, critical when=
=20
someone seems to do what you are suggesting, project  their personal=20
understanding  of Linux onto  this service.  Someone has damaged a=20
critical program  that we are all forced to deal with at the time.
We have engaged in this discussion before.
One reason speaking personally why I feel Linux enjoys less of the=20
commercial market  is because, to really make it work, you must be a=20
programmer.  Especially given all the layers of the distributions, and the=
=20
many distributions involved.
If chime has managed to find someone interested enough to write scripts=20
for him, and   incorporate Linux elements for him, who are you to judge?
His life, his machine, and his resources.
Karen



>
> Cheers,
> Didier
>
> Le 28/11/2021 =C3=A0 21:12, Linux for blind general discussion a =C3=A9cr=
it=C2=A0:
>>  Hi Chime,
>>
>>  Amazingly the same guy (Daniel Trizen) maintain both pipe-viewer and
>>  youtube-viewer.
>>
>>  The only obvious difference being that pipe-viewer does not need a YouT=
ube
>>  API
>>  key. For this reason I will package this one.
>>
>>  Cheers,
>>  Didier
>>
>>  Le 28/11/2021 =C3=A0 20:28, Linux for blind general discussion a =C3=A9=
crit=C2=A0:
>> >  Hi Didier: Yesterday I tried pipe-viewer, sure it works, but even wit=
h=20
>> >  max results set at 50, I only get 20, unlike youtube-viewer where it =
is=20
>> >  50. When I had straw-viewer, I noticed, you could get away with max=
=20
>> >  results at 58 but half of the items were duplicates. By the way, my=
=20
>> >  Linux person wrote me an alias to update youtube-viewer. Actually, it=
s=20
>> >  short enough.
>> >  #!/usr/bin/sh
>> >  cd /home/chime/youtube-viewer/
>> >  git fetch
>> >  git merge
>> >=20
>> >  perl Build.PL
>> >  sudo /home/chime/youtube-viewer/./Build installdeps
>> >  sudo /home/chime/youtube-viewer/./Build install
>> >  Back again live, I just type "tube" and now I am at 3.9.6
>> >  Chime
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
---1404930036-498971804-1638133126=:113324
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-498971804-1638133126=:113324--

