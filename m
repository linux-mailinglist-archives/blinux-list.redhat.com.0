Return-Path: <blinux-list+bncBDAPZGHUUMBRBTWNTOZQMGQESPHOY7I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 887C490208A
	for <lists+blinux-list@lfdr.de>; Mon, 10 Jun 2024 13:43:12 +0200 (CEST)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5baf13f9c83sf1192355eaf.3
        for <lists+blinux-list@lfdr.de>; Mon, 10 Jun 2024 04:43:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718019791; cv=pass;
        d=google.com; s=arc-20160816;
        b=qaXU7bPSXDdXnGgc2iIjGsQB5aNE0W7vKL1IZHzJqbSTZG4njChi24PJCvFvdUM09t
         Dv7upxH/qGikRde3IT4jNU1TX2ymOW/51JlBBoBpUXhhhLQR1qY/SoYJMXyoId42MA5j
         8hJ/QPLukmt5wXg/H6DnFCXmJ4sq0YnmO/xA2mTO8FZtM9+jpB4L9VJQFf6Ce57dX9GN
         TGg95QMeQ2mxEl1a9QEmelRMFaD7jbedFazMNt9Bq2hkjIuyeIZYRetu0Kb+YlNnPPM1
         yklwPOruBowiMY71P0POnBZlFqReu34krP0s8P84VEequRYAioQ2hGKEwaM35lin0aHT
         UuUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:user-agent:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=axClXxSmaS+TCx3cCj53MRBcEkhjqCRRn3zJBONfQXg=;
        fh=WUuUFSDntO9FzU1iBWC8U2svYboCfVD2cp+qLAwNAyU=;
        b=PQ1qhcpKy2B7aGcs6hkmwNWecz4t7YExnoaD5J8CJ0Wt9Xwz4CsOBhA2r95s/OHtN0
         EMOcb0vsWZHvJSdnS0zVSTqG6rL5mGr6qgY/rC4zKY3Go9hyCqpnI5Z/Wm+rWntZQs6y
         v1VU4nhDnDGmsfsarSO0DS1TYGHVC8tTQPh2C7y5G09rlAlMwQE9KseTTiZNGUjN2Lzx
         P1CotXBKyt5f/Bwqg0rbWHRWnmKG4Cw3VDAYDN1BrcwvEBbBApsIVcVe2zKlGSyONsJe
         yEG58bpxrTxlmpfBoq3HFe1Pzd/0NULte1fFtexejFsQ6LI4WsPGkPenshytLWSrxQgd
         GAdA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.54 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718019791; x=1718624591;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:user-agent:in-reply-to:mime-version:references
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=axClXxSmaS+TCx3cCj53MRBcEkhjqCRRn3zJBONfQXg=;
        b=MrA45amg1U3DLkezqzXGSXUPPPAQ7+KVQ0f8kBgmlg5adxGIQNRtye7byvAEseJkox
         bOxQkxCGcA6MrRbC4qzQEp+2mTsUb2YRX/KSEoVRQWgv1f/n8FmkQ8B6lmZCtLbHmFr6
         YGIc1BKNeIs6505Jt3QHoARwT25hAFJ7yX5plsjG1Oar4oqOzxbrFgEcGyizZgwWs7eh
         tBzASHA/lVqGqQcLSrs2zuwJFDyuCgd0wHAb7fkYGBiaCvjYAsuIlhBg3nwQVvhwCYWH
         Z50MWpMwywUynxVZtw7OtNBAvLT+J9q7kWRckCiJUGGvHp3taudzTL/WyNqwmcXMH3LF
         46DA==
X-Forwarded-Encrypted: i=2; AJvYcCVpjcgFDjcscOt88sKdySCpfyNlO7HBdi+2yUYKJkjAUe4sLRBw9Z5wVtv6iot7I8AbaMzWVtdBXnUmnbXLvMi8sJkfKhraILU/
X-Gm-Message-State: AOJu0Yz78sJLjpxYGUOyXwMTg6jQZey1+VLTCzuEiD4reL9dpwjEDN3F
	ju1zDbFMkoNIlO1fM3O6TLL1uupYlSVp5wsNpaY9llNpg5XyHzCD1quf80tywLQ=
X-Google-Smtp-Source: AGHT+IEz9lFyyxKu4Dd677c8qT5NWxuvIgNBoz5+N4BOJoGUPYyaN5UWCquNKaOMtdsW75m9vQmLBQ==
X-Received: by 2002:a05:6820:608:b0:5bb:672:405a with SMTP id 006d021491bc7-5bb06724312mr2313046eaf.8.1718019790747;
        Mon, 10 Jun 2024 04:43:10 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:347:0:b0:5b9:946f:8e43 with SMTP id 006d021491bc7-5baaa36e4e7ls3694504eaf.2.-pod-prod-03-us;
 Mon, 10 Jun 2024 04:43:10 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUrIYK7his24MMd8eEC/4mM08G+Lu3VOka4WvOWQP8jDJvxlo8QcYGPsWzIzxHOX+AfdGEIfBrWOEDY8OVwAl01fLc1Cj6U/IYImctN
X-Received: by 2002:a9d:7591:0:b0:6f9:a996:80ac with SMTP id 46e09a7af769-6f9a99681ffmr3329491a34.9.1718019789821;
        Mon, 10 Jun 2024 04:43:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718019789; cv=none;
        d=google.com; s=arc-20160816;
        b=T9NL8iM+4SfInHEigWUIqWn4Qj229SCBE97eAbznzrcTaxWjuJENlba3M57uEJbf4e
         WCg0BiuVZf1aGS7aH6migW1T7B+LsBtvxgZX/rQQs9IohBfs9QJS443KGJ8FS7n5ku44
         RCAFWEIj+cnludB29kWFZDToguuMEKbEnBJOadn55NN+C8tT7Qgx06MtNVyDSCmOJdCx
         GX/DaCQdkmBs/a8onetpbDjaNBrFmtMLhgpibXwRKFH0QqnhZiNksn4IR1d+TxQqd7CD
         TA3RGXfcqAJUBd+Ovz/urSAfRu7RuM3KMj3JcxSRg0VSu5wrucbOh/LwLZBts97r+74u
         mu3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:user-agent:in-reply-to:mime-version:references
         :message-id:subject:to:from:date:delivered-to;
        bh=OiQHeBqKVOmjbLH9DX1YR1/n6nllDnSnChu7OmXigl0=;
        fh=wDQQO4gqj6aDOavOuT80wlvrNkZcT8NwnFO5HtDEDq8=;
        b=xa19/CkVKVK5ZZ593QNXAPvLx1QrMn1VIHBH97JMUnP0Yl4F+ibiqgi5llom2LqudJ
         /6fT+loEbpRIUD5W/M+MWpu7MzUWj/8No0exE3cRTmafXGaKbw0WKh5TYBjwJh+py28h
         EmYjwnL2rfgT+DjUWMci+iFGHlCUDcfbro7+utBXMQjUcX8Rk7alm/IX7feW0Y+kb0w+
         AQpKLfPfznNHNKsrMfXDpJ36eBVnSCefXpa1bne1MyJnajvzhPetMv9mtw/QsUyOW9qH
         aAEqMA9NlKEmuBm4Knxm0kXIDnWudA6QH534pEUFkaN9aJQ8E/i1k2twV/QC3rJYTdpJ
         /lQg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.54 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b082daeebcsi10628826d6.25.2024.06.10.04.43.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 04:43:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.54 as permitted sender) client-ip=209.85.167.54;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-125-R_L1TSi3NDuPMqH0Xx8fMQ-1; Mon,
 10 Jun 2024 07:43:08 -0400
X-MC-Unique: R_L1TSi3NDuPMqH0Xx8fMQ-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 71C3B19560A2
	for <blinux-list@gapps.redhat.com>; Mon, 10 Jun 2024 11:43:07 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 62E2E19560AB; Mon, 10 Jun 2024 11:43:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 608B11956087
	for <blinux-list@redhat.com>; Mon, 10 Jun 2024 11:43:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CB04519560B1
	for <blinux-list@redhat.com>; Mon, 10 Jun 2024 11:43:06 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-438-5Y6odfJ-Oj2UXm1v_UH81A-1; Mon, 10 Jun 2024 07:43:04 -0400
X-MC-Unique: 5Y6odfJ-Oj2UXm1v_UH81A-1
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52bd48cf36bso2909692e87.3
        for <blinux-list@redhat.com>; Mon, 10 Jun 2024 04:43:04 -0700 (PDT)
X-Received: by 2002:a05:6512:2812:b0:52c:8405:4869 with SMTP id 2adb3069b0e04-52c84054dfdmr2896940e87.66.1718019781597;
        Mon, 10 Jun 2024 04:43:01 -0700 (PDT)
Received: from localhost ([2a02:2168:88db:8e00:3617:728a:fa97:6f79])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52c833cabf5sm816720e87.263.2024.06.10.04.43.00
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 04:43:00 -0700 (PDT)
Date: Mon, 10 Jun 2024 14:43:00 +0300
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: likely accessibility defect in archlinux latest iso
Message-ID: <72v7eu5uv3qahyt6np5simjydkn7tzofdnne262uitrj7iroxg@rtn5jtebimq5>
References: <15d281d7-da29-e92b-867a-56ddf01fe833@panix.com>
 <26109e97-dc30-4645-a556-0275aefbcf00@jasonjgw.net>
MIME-Version: 1.0
In-Reply-To: <26109e97-dc30-4645-a556-0275aefbcf00@jasonjgw.net>
User-Agent: NeoMutt/20240425
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: aarnaarn2@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of aarnaarn2@gmail.com designates 209.85.167.54 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

On Mon, Jun 10, 2024 at 07:35:32AM GMT, 'Jason J.G. White' via blinux-list@redhat.com wrote:
>
> On 9/6/24 21:13, Jude DaShiell wrote:
> > It's possible to do the whole archlinux installation and enable dhcpcd and
> > espeakup and then reboot and all that happens is silence after the
> > speakers click.

hmm. if you did something wrong during the arch installation process,
then what error in the installation iso image are we talking about?

> Yes, it's possible to make istakes during an Arch Linux installation. It
> worked for me first time though.
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--
Sincerely, Alexander

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

