Return-Path: <blinux-list+bncBCCIDSOV5UGBBCPAXC3AMGQEJENALSA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4D2961845
	for <lists+blinux-list@lfdr.de>; Tue, 27 Aug 2024 21:59:07 +0200 (CEST)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-70932abea64sf7277914a34.1
        for <lists+blinux-list@lfdr.de>; Tue, 27 Aug 2024 12:59:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724788746; cv=pass;
        d=google.com; s=arc-20240605;
        b=K3QaiR3AFD4GoCzhEzDfw7lkg/Q/1Q5AsuyHWp3iRD4bOJAUjI5kk+/wgfjvRgv2ID
         dJS7LSwezHEC4n4Y4fw+a55O+YS6V8CeEf+9smNbLg7Wtv0SiKNtqMcVeCwCqQRikVxu
         25s+SxkzUTdckF1CQxCxuvim1+gAywJb3jMQSNPtszcW7p+boFKsKsE4jAEStUIZHlSD
         96FBG+yniS9Et2igfYJU0AbI2ZHp1bZBdEYG3yAmCbBzSaxaus1lw7/PA7VGK31JWlMX
         N7sJDYlpQ1bkGf9uAE8MaUg6Bnlc8rxZuC+uwnoUyy3wnKCq6tTMgJMw9a3XpEmr5uw+
         cfhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to;
        bh=5/WP+0SOixRgps4SPDj/Xgl92DrexXdYcKzQQEbhskY=;
        fh=nurO2KvMXomcyPzX19woz94yX25RIaDIAsUcfbslzmA=;
        b=hSNijPg9eOsuljFrT+J4dWUGYuTLgZtPpIOz5bX7Pwq6hV7cCXvEtpFE7iH0O6+eZh
         CCeAo/s3w1LV8LaPos8lOWSc1spK6aGjz4P9G6sW4LmP8k1F+6WV8N6Q13LCVi7P4T+m
         iDAxSz6VwMmJWfPfap2h4NvluVAPqVotV/IyQR7FEt4ipjA7gWerDnzGmP0WmV+n+SI4
         +dq03db7NFzR+hxaJLPTb69FkGc4FjU68KpO/jx5Ky9wqdA8mWoSs9jAFfg6yVKAP/CI
         VgpRFV1R+BBTfrqENTmBAuQa1J+Rpktww9jDQ4IvKFf1d1ZWsYm6LN0gYjqXPu7Hgv32
         oCLg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 173.228.157.53 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724788746; x=1725393546;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5/WP+0SOixRgps4SPDj/Xgl92DrexXdYcKzQQEbhskY=;
        b=OwrNHKICz7TJEwajbMNpbJGAbKlKMZ9nQDyZXF2XZh34G/+B7PdZT9InmF9hU8A0H0
         3oWtdxiEMroVTJsst9DjLyUcWYTr3TDdyoaTjzgh96t9dbRPNaI9ZS36NfryKNR6zGFz
         NhuRxhpDcRbEst1KEwFaC6tAJ24jNecofEYjPPtBtRjJR2EPTCt3LO9mghY/Wy4n32mK
         qdAJ5F6us/pN0VTOYOLMkw9v0cRa5HfjfaM+8S8QpnxDc9dohG74vfBOyp9OW029kpm0
         AhW3i5Xa4ZPM5ptb6OtI8embSZm5nGF7u9sWlkJqDmf7b+L3T94v9lS9sE/CY5XPm1qQ
         CItA==
X-Forwarded-Encrypted: i=2; AJvYcCUt5bET/r0N40Lx3HOajjJmLA9rQisqsCgjWaqi9HPAvBNzAwDK8VHgJMACVjnlGNYiBZU6Aw==@lfdr.de
X-Gm-Message-State: AOJu0Yz9XnG4WYvHtQX7r72E2bD7faeUmcPNavkORUB5Lq82EliZ4moG
	iAQgQQlbGEXtJnV9H7xRq1gSkOXTsCqPQOvZdG9mQ8aucjV/Sz8zFU2ODDl887I=
X-Google-Smtp-Source: AGHT+IG3oJAVrU8hXTi285QCxbthMwu0M555idEl/gc4Zpe+mCVQ9RIzfPoB767zK1KsSRoEZsTrLw==
X-Received: by 2002:a05:6830:3807:b0:703:c26b:6e05 with SMTP id 46e09a7af769-70e0eb37e40mr18910021a34.18.1724788746176;
        Tue, 27 Aug 2024 12:59:06 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:59d3:0:b0:44b:e6db:de28 with SMTP id d75a77b69052e-454fc350911ls80937101cf.2.-pod-prod-04-us;
 Tue, 27 Aug 2024 12:59:05 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWh/+gkxvC8xgcIigw64LzTDbhm4ihzZry4VvtQ5IVF7FoM9xP6KeDY6eU//jpEU1fhyHWHv3irsIwVJw==@gapps.redhat.com
X-Received: by 2002:a05:622a:58c5:b0:450:190:4fe4 with SMTP id d75a77b69052e-45509d386e3mr212850441cf.49.1724788745364;
        Tue, 27 Aug 2024 12:59:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724788745; cv=none;
        d=google.com; s=arc-20160816;
        b=E1nR1QlW6x9+UYt6gbrzixk+mLXi6efVM37MFLxBYCOp50ifMoBfW9QzjcnRcsLN7T
         PEy5J6xKDNPMy2S5O8DStQaetu3cu7PlWOvXazAbWmjeOPH1BqHfRoVx8/Akt35n9kv3
         uADdYst+NEB1ROVb9WgXsDxYtc87HCGOXI1c5wFuJr6AD3yFyz3223VAJOguLMdf6EPr
         CyacbYFh5o9+MNMjX0ieKGcpOT+/8auSo7iTzvPNpntvypKWKnoYUVyLIN1C6cLvnCiu
         Fsv7Su/Qi1n7UTM+sgHiWwvVD4zt0TaDagmCppDp7MWMYOll6pfnETDxMBpKxW/pKAFw
         98WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to;
        bh=pMDU4UzcwWb0qinbA7v1lRnRH+nYbA4HhU/MXOGES6s=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=diGCmw33IN9aunHwMOz2oYW1ejyY7FJ9UBdrqGR1y9mP/L9Wm13yEIchKfbU9leDDJ
         7ysH6bR1UsmbIg8ayC/ZW4Q2myU0iF6c/HuwQWXjscZzf2TzyiZoRsWzWMaLCTe1Ef1W
         qAQ4fLj9+B0NDQKfFO+QCB5/CtB4e5ChXs7kxpdhLyZtasth+Y/9pqam69Aw3Iy39Eo/
         84cFQoSXEHBGZYbMBPiovQvu5sJdptkQKJAUDGQBzzQvO3HBmLr49jdpnFIwR43iKOYs
         qKQ9dzPUbz5xe9DsnSpNv1XUUOkdxWWPELH5qf2TNpAP8+h9aI9inStA6o/uX8K6JmIr
         ykAQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 173.228.157.53 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-454fe325a66si150925861cf.677.2024.08.27.12.59.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2024 12:59:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 173.228.157.53 as permitted sender) client-ip=173.228.157.53;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-393-KZexW9tdMGOpiZlf5YdG6A-1; Tue,
 27 Aug 2024 15:59:03 -0400
X-MC-Unique: KZexW9tdMGOpiZlf5YdG6A-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EEA461955F6A
	for <blinux-list@gapps.redhat.com>; Tue, 27 Aug 2024 19:59:02 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E4AEF1955F41; Tue, 27 Aug 2024 19:59:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E28AA195605F
	for <blinux-list@redhat.com>; Tue, 27 Aug 2024 19:59:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 659421955F6A
	for <blinux-list@redhat.com>; Tue, 27 Aug 2024 19:59:02 +0000 (UTC)
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-503-Juc9GbcQNbC7UVaywfpqlQ-1; Tue, 27 Aug 2024 14:32:10 -0400
X-MC-Unique: Juc9GbcQNbC7UVaywfpqlQ-1
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id ECFC32743C
	for <blinux-list@redhat.com>; Tue, 27 Aug 2024 14:32:08 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id E5A7A2743B
	for <blinux-list@redhat.com>; Tue, 27 Aug 2024 14:32:08 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [66.8.172.150])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 441DB27438
	for <blinux-list@redhat.com>; Tue, 27 Aug 2024 14:32:05 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1sj0z4-0004RZ-10
	for blinux-list@redhat.com;
	Tue, 27 Aug 2024 08:32:02 -1000
Date: Tue, 27 Aug 2024 08:32:02 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: Grants for developing accessible software
Message-ID: <20240827183202.o3kjhfbugb46jj7h@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <20240826195903.wwlxwqjipjjxnc7k@sprite>
 <b7d0dc90-b882-46c4-b089-fe861f0175a7@gmx.it>
 <8f39b1ff-64ee-4d51-bc0a-ee991f3b14db@gmail.com>
MIME-Version: 1.0
In-Reply-To: <8f39b1ff-64ee-4d51-bc0a-ee991f3b14db@gmail.com>
X-Pobox-Relay-ID: A8E66BE4-64A2-11EF-B1BA-E92ED1CD468F-04347428!pb-smtp21.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 173.228.157.53 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

Harley Richardson wrote:
> The idea of TUI software is nice, but it has to
> be written a certain way for Orca and other screen readers to correctly
> determine where focus is and announce state changes. Highlight tracking
> fixes some things, but not all.

Hi Harley,

Thanks for your reply.

Up to now I don't have experience programming to especially
to support Orca users. Happy to learn more about it.

For Nama, I've used the console model: commands are typed at
a prompt, command output follows, after which the command
prompt is printed.  The prompt includes the project name and
selected track that commands are applied to. 

That works for a braille display user and I've heard for 
text-to-speech to speech as well.

There are a few other situations--such as adjusting effect
parameters or adjusting the playback position--where typing
a command is cumbersome. For that there is a 'hotkey mode'
in which keys are mapped directly to a command, and the
bottom line of the screen is rewritten with the updated value. 

cheers to all

-- 
Joel Roth

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

